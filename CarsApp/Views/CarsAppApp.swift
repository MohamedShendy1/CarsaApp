//
//  CarsAppApp.swift
//  CarsApp
//
//  Created by Trend-HuB on 24/08/1445 AH.
//

import SwiftUI

@main
struct CarsAppApp: App {
    //Properties
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    //Body
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                CarsListView()
            }
            
        }
    }
}
