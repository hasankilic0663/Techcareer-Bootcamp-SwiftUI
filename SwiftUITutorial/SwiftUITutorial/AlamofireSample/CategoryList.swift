//
//  CategoryList.swift
//  SwiftUITutorial
//
//  Created by Hasan on 8.08.2024.
//

import SwiftUI
import Alamofire

struct CategoryList: View {
    
    @State var categories : [Category] = []
    var body: some View {
        VStack{
            
            ForEach(categories,id:\.id){ item in
                HStack{
                    Text(item.name)
                        .padding()
                    
                    Button("Delete"){
                        AF.request("https://northwind.vercel.app/api/categories/\(item.id)",method: .delete)
                            .responseData { response in
                                let request = AF.request("https://northwind.now.sh/api/categories")
                                request.responseDecodable(of: [Category].self ){ response in// buna kategoriye cevır
                                    categories = response.value ?? []
                                    
                                }

                            }
                    }
                }
               
            }
        }
        .onAppear(){
            //ekran hazırlandığında web service gidip dataları çekiyorum
            //https://northwind.now.sh/api/categories
            let request = AF.request("https://northwind.now.sh/api/categories")
            request.responseDecodable(of: [Category].self ){ response in// buna kategoriye cevır
                categories = response.value ?? []
                
            }
        }
    }
}

#Preview {
    CategoryList()
}


struct Category : Decodable { // bu jsondan gelen daatayı karsılıyo codable  veya decodable
    var id : Int = 0
    var name : String = ""
    var description : String = ""
}
