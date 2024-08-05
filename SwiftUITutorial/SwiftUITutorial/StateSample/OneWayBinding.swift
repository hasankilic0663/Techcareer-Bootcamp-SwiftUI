//
//  StateSample.swift
//  SwiftUITutorial
//
//  Created by Hasan on 5.08.2024.
//

import SwiftUI

struct OneWayBinding : View {
    var  name = "Hasan"
    var age = 11
    var countries = ["Türkiye", "Rusya","Yunanistan","İran","İsveç", "Brezilya" ]
    var body: some View {
        Text(name)
            .padding()
        Text("\(age)")
            .padding()
        Text(String(age))
            .padding()
        ForEach(countries,id: \.self){ country in
            Text(country)
                .padding(.bottom,5)
        }
    }
}

#Preview {
    OneWayBinding()
}
