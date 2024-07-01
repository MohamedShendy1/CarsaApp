//
//  ModelView.swift
//  CarsApp
//
//  Created by Trend-HuB on 25/08/1445 AH.
//

import SwiftUI

struct ModelsView: View {
   
    //Propertis
    var car : Car
  
    //Body
    var body: some View{
        GroupBox(){
            DisclosureGroup (AppCons.tx.models){
                ForEach(0 ..< 7) { item in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                            .foregroundColor(car.gradient[1])
                        Text("Model \(item+1) : ")
                            .foregroundColor(car.gradient[1])
                            .fontWeight(.bold)
                        Spacer()
                        
                        Text(car.models[item])
                    }
                    .padding(.vertical,2)
                }
            }
            .foregroundColor(car.gradient[1])
        }
        
    }
}

#Preview {
    ModelsView(car:carData[5])
}
