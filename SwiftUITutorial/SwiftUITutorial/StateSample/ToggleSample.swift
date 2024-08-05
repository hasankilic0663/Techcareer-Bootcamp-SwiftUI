//
//  ToggleSample.swift
//  SwiftUITutorial
//
//  Created by Hasan on 5.08.2024.
//

import SwiftUI

struct ToggleSample: View {
    @State var isOpen = true
    var body: some View {
        VStack{
            Toggle("Open", isOn: $isOpen)
                .padding()
            
            if(isOpen){
                Text("hasan")
            }
        }
    }
}

#Preview {
    ToggleSample()
}
