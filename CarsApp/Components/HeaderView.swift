//
//  HeaderView.swift
//  CarsApp
//
//  Created by Trend-HuB on 25/08/1445 AH.
//

import SwiftUI



struct HeaderView: View{
    
    //Properties
    var car : Car
    @State var isAnimating : Bool = false
    
    //Body
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect( isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.3), value: isAnimating)
            
        }//: ZStachk
        .frame(height: 440,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnimating = true
        })
        
        
    }
}
#Preview {
    HeaderView(car: carData[0])
}
