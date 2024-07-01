//
//  SettingView.swift
//  CarsApp
//
//  Created by Trend-HuB on 25/08/1445 AH.
//

import SwiftUI

struct SettingView: View {
    
    //Properties
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    @Environment (\.presentationMode) var presentationMode
    //Body
    var body: some View {
        
        NavigationView{
            VStack{
                GroupBox() {
                    HStack{
                        Text("Cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName:"car")
                    }//: HStack
                    Divider()
                    HStack{
                        Image("car")
                            .resizable()
                            .scaledToFit()
                            .font(.title)
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        Text(AppCons.tx.desc)
                    }//: HStack
                }//: Group box
                
                // check Box
                Toggle(isOn: $isOnboarding) {
                    if isOnboarding {
                        Text(AppCons.tx.restarted.uppercased())
                            .font(.title2)
                            .foregroundColor(.green)
                    }else {
                        Text(AppCons.tx.restart.uppercased())
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                }//: Toggel View
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(8)
                Spacer()
                
            }//: VStack
            .navigationTitle(AppCons.tx.settings)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
            
        }//: Navigation View
    }
}

#Preview {
    SettingView()
}
