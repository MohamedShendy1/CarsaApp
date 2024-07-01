//
//  CardView.swift
//  CarsApp
//
//  Created by Trend-HuB on 24/08/1445 AH.
//

import SwiftUI

struct CardView: View {
    //properties
    var car : Car
   
    @State  var isAnmating : Bool = false
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    //Body
    var body: some View {
        
        VStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(isAnmating ? 1 : 0.6)
            
                .animation(.linear(duration: 0.3), value: isAnmating)
            
            Text(car.title)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            Text(car.headline)
                .font(.title3)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            
            Button(action: {
                isOnboarding = false
            }, label: {
            Image(systemName: "arrow.right.circle")
                Text("Start")
                    .font(.largeTitle)
            })
            .padding(.horizontal, 15)
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white , lineWidth:  1.5))
            
        }//: VStack

        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)

        .frame(minWidth: 0, maxWidth: .infinity , minHeight: 0 ,maxHeight: .infinity ,alignment: . center)

        .background(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .topLeading , endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnmating = true
        })
        
    }
}

#Preview {
    CardView(car: carData[6])
}

