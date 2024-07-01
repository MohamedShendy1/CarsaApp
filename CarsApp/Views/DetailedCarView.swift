//
//  DetailedCarView.swift
//  CarsApp
//
//  Created by Trend-HuB on 25/08/1445 AH.
//

import SwiftUI

struct DetailedCarView: View {
    
    //Properties
    var car : Car
    
    //Body
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                
                //Header for car
                HeaderView(car:car)
                VStack (alignment: .leading, spacing: 15){
                    //Title
                    Text(car.title)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradient[1])
                    
                    // Headline
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    //Car Models
                    ModelsView(car: car)
                    
                    
                    //Car Description
<<<<<<< HEAD
                    Text("More about\(car.title)")
=======
                    Text("Learn More about\(car.title)")
>>>>>>> updateComponents
                        .font(.title2)
                        .foregroundColor(car.gradient[1])
                        .fontWeight(.bold)
                    
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    //Links
                    FooterView()
                        .padding(.bottom,40)
                    
                }//: VStack
                .padding(.horizontal,15)
                
                
            }//: VStack End Of main view
            
        }//: Scroll View
        .ignoresSafeArea(.all)
    }
}



#Preview {
    DetailedCarView(car: carData[2])
}


