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
           
        }
        .onAppear(){
            //ekran hazırlandığında web service gidip dataları çekiyorum
            
            let request = AF.request("https://www.instagram.com")
            
        }
    }
}

#Preview {
    CategoryList()
}


struct Category{
    var id : Int = 0
    var name : String = ""
    var description : String = ""
}
