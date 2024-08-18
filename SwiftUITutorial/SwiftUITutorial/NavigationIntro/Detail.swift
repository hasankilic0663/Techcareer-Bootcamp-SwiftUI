//
//  Detail.swift
//  SwiftUITutorial
//
//  Created by Hasan on 12.08.2024.
//

import SwiftUI

struct Detail: View {
    var name = ""
    var body: some View {
        VStack{
            Text(name)
                .padding()
                .font(.largeTitle)
        }
    }
}

#Preview {
    Detail()
}
