//
//  metalBands.swift
//  SwiftUITutorial
//
//  Created by Hasan on 12.08.2024.
//

import SwiftUI

struct metalBands: View {
    var metalbandss = ["hasan","ali","muhammed","mert","beray","hüseyin","şengül","ceylin"]
    var body: some View {
        NavigationView {
            VStack{
                ForEach(metalbandss, id:\.self){item in
                    
                   
                    NavigationLink(destination : Detail(name:item)){
                        Text(item)
                            .padding()
                        
                    }
                }

            }
        }
    }
}

#Preview {
    metalBands()
}
