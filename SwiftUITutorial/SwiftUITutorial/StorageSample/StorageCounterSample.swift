//
//  StorageCounterSample.swift
//  SwiftUITutorial
//
//  Created by Hasan on 11.08.2024.
//

import SwiftUI

struct StorageCounterSample: View {
    @State var counter = 0
    
    var body: some View {
        VStack{
            Text("Counter: \(counter)")
                .padding()
            Button("Increase"){
                counter = counter + 1
                
                //Telefona bu counter degerını kalıcı bir şekilde kaydediyorum
                UserDefaults.standard.set(self.counter , forKey: "counter")
            }

            Spacer()
        }
    }
}

#Preview {
    StorageCounterSample()
}
