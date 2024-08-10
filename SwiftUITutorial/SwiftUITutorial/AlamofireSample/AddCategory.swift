//
//  AddCategory.swift
//  SwiftUITutorial
//
//  Created by Hasan on 9.08.2024.
//

import SwiftUI
import Alamofire


struct AddCategory: View {
    
    @State var name = ""
@State var description = ""
    var body: some View {
        
        VStack{
           
            TextField("Name : " , text: $name)
                .padding() 
            TextField("Description : " , text: $description)
                .padding()
            
            Button {
                let newCategory : [String : Any] = [
                    "name" : name,
                    "description" : description
                ]
                AF.request("https://northwind.now.sh/api/categories" , method: .post , parameters:  newCategory , encoding: JSONEncoding.default).responseDecodable(of : Category.self){ response in
                    print(response.value!)
                    
                }// ben bir post işlemi atıyorum diyorum
                //ben bu parametreleri encode et dıyorum
            } label: {
                Text("Add")
            }

        }

    }
}

#Preview {
    AddCategory()
}
