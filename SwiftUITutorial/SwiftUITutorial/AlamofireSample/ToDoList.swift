//
//  ToDoList.swift
//  SwiftUITutorial
//
//  Created by Hasan on 9.08.2024.
//

import SwiftUI
import Alamofire

struct ToDoList: View {
    @State var todos : [Todo] = []
    var body: some View {
        ScrollView {
            VStack{
                ForEach(todos, id: \.id){ item in
                    Text(item.title)
                        .padding(.bottom)
                }
            }
            .onAppear(){
                let request = AF.request("https://jsonplaceholder.typicode.com/todos")
                
                request.responseDecodable(of: [Todo].self) { response in
                    todos = response.value ?? []
                    
                }
        }
        }
    }
}

#Preview {
    ToDoList()
}


struct Todo : Codable {
 var userId : Int = 0
    var id : Int = 0
    var title : String = ""
    var completed : Bool = true
}
