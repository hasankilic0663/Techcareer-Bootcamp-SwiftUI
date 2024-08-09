//
//  KDVCalc.swift
//  SwiftUITutorial
//
//  Created by Hasan on 5.08.2024.
//

import SwiftUI

struct KDVCalc: View {
    
    @State var price = ""
    @State var kdvPrice  = 0.0
    var body: some View {
        VStack{
            TextField("Price", text: $price)
                .padding()
                .background(.black.opacity(0.1))
                .cornerRadius(15)
            
            Text("KDV: \(kdvPrice)")
                .padding()
            
            Button("KDV Calc"){
                kdvPrice = (Double(price) ?? 0) * 0.2 // boşsa eğer 0 dır degero. bos gelmez ama. kesin cevrilicekse ! koy ama cevrilemezse patlar. o yuzden soru ısareti koyacagız ?
             }
            .padding()
        }
    }
}

#Preview {
    KDVCalc()
}
