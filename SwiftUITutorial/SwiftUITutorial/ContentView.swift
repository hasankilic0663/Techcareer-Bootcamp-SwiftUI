//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Hasan on 22.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Friday, 15 Dec")
                    .foregroundStyle(Color(.gray))
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                }

               
            }
            .padding()
            
            HStack{
                Text("Learn")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            .padding()
            HStack{
                Text("Choose of the part of the body")
                Spacer()
                
            }
            .padding(.horizontal)
            
            
            
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 7)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ ,maxHeight: 70)
                        .padding(.horizontal,1)
                    
                    VStack{
                        Text("Head & Face")
                            .foregroundStyle(.white)
                        Text("11 disaess")
                            .foregroundStyle(.white)
                    }
                }
            }
            HStack{
                VStack(alignment: .leading){
                    Text("Head & Face")
                        .foregroundStyle(.white)
                    Text("11 disaess")
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            .padding()
            .background(.red)
            .cornerRadius(9)
            
            HStack{
                VStack(alignment: .leading){
                    Text("Head & Face")
                        .foregroundStyle(.white)
                    Text("11 disaess")
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            .padding()
            .background(.green)
            .cornerRadius(9)
            
            HStack{
                VStack(alignment: .leading){
                    Text("Head & Face")
                        .foregroundStyle(.white)
                    Text("11 disaess")
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            .padding()
            .background(.yellow)
            .cornerRadius(9)
            
          
            Spacer()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
