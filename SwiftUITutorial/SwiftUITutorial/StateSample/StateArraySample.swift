//
//  StateArraySample.swift
//  SwiftUITutorial
//
//  Created by Hasan on 5.08.2024.
//

import SwiftUI

struct StateArraySample: View {
    @State var metalBands = ["Gojira", "Iron Maiden" , "Amon Amarth", "Rotting Christ" , "Slipknot"]
    
    var body: some View {
        VStack{
            
            Text("Count : \(metalBands.count)")
                .font(.largeTitle)
                .padding()
            
            Button("Clear"){
                metalBands = []
            }
            
            ForEach(metalBands, id:\.self){ item in
                Text(item)
                    .padding()
                
            }
            
        }
    }
}

#Preview {
    StateArraySample()
}
