//
//  CarCellView.swift
//  CarsApp
//
//  Created by Trend-HuB on 24/08/1445 AH.
//

import SwiftUI

struct CarCellView: View {
    //Variables
    var car : Car
   
    //Body
    var body: some View {
                
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius:2, x: 2 , y: 2)
                .cornerRadius(8)
                
            
            VStack(alignment: .leading, spacing: 5) {
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }
            Spacer()
            
        }
        
      
    }
}

#Preview {
    
    CarCellView(car: carData[0])
        
    
}
