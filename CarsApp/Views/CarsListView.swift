//
//  CarsListView.swift
//  CarsApp
//
//  Created by Trend-HuB on 24/08/1445 AH.
//

import SwiftUI

struct CarsListView: View {
    @State var isSheetViewPresented : Bool = false
    //Body
    var body: some View {
        NavigationView{
            List{
                ForEach(carData) { item in
                    NavigationLink(destination: DetailedCarView(car: item)) {
                        CarCellView(car:item)
                            .padding(.vertical, 10)
                    }//: Navigation Link
                }
            }//: List
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                isSheetViewPresented = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isSheetViewPresented, content: {
                SettingView()
            })
            
        }//: NavigationView
       

    }
}

#Preview {
    CarsListView()
}
