//
//  TextInputSample.swift
//  SwiftUITutorial
//
//  Created by Hasan on 5.08.2024.
//

import SwiftUI

struct TextInputSample: View {
    @State var name = ""
    @State var surname = ""
    @State var fullNames : [String] = []
    var body: some View {
        TextField("Name", text: $name)
            .padding()
            .background(.gray.opacity(0.5))
            .cornerRadius(5)
            .padding(.horizontal)
        TextField("Surname", text: $surname)
            .padding()
            .background(.gray.opacity(0.5))
            .cornerRadius(5)
            .padding(.horizontal)
        
        Button("Add"){
            var fullname = name + " " + surname
            
            
            fullNames.append(fullname)//bos olan dızıye append ıle eklıyoruz
            name = ""
            surname = ""
        }
        .padding()
        Text("Count: \(fullNames.count)")
        
        ForEach(fullNames, id:\.self){ item in
            Text("\(item)")
                .padding()
            
        }
        
    }
    
}

#Preview {
    TextInputSample()
}
