//
//  ContentView.swift
//  CarsApp
//
//  Created by Trend-HuB on 24/08/1445 AH.
//

import SwiftUI

struct OnboardingView: View {
    
    //Body
    var body: some View {
    
        TabView{
            ForEach(carData) { item in
                CardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    OnboardingView()
}
