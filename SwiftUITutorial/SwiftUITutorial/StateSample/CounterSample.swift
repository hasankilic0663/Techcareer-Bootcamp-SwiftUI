//
//  CounterSample.swift
//  SwiftUITutorial
//
//  Created by Hasan on 5.08.2024.
//

import SwiftUI

struct CounterSample: View {
     @State var counter = 0 //state değiştiginde içindeki yeniden calısır hep
    var body: some View {
        Text("Counter : \(counter)")
            .font(.largeTitle)
            .padding()
        
        
        Button("Increase"){
            counter = counter + 1
        }
        .font(.largeTitle)
        Button("Decrease"){
            counter = counter - 1
        }
        .font(.largeTitle)
    }
}

#Preview {
    CounterSample()
}
