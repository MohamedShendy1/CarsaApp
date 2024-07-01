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
                        
                        Text("Cars App includes very important information about the luxutry cars, it has details about the history different models ..")
                    }//: HStack
                }//: Group box
                
                // check Box
                Toggle(isOn: $isOnboarding) {
                    if isOnboarding {
                        Text("Restarted".uppercased())
                            .font(.title2)
                            .foregroundColor(.green)
                    }else {
                        Text("Restart".uppercased())
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                }//: Toggel View
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(8)
                Spacer()
                
            }//: VStack
            .navigationTitle("Settings")
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
