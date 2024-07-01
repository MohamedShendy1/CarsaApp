//
//  car.swift
//  CarsApp
//
//  Created by Trend-HuB on 24/08/1445 AH.
//

import SwiftUI

struct Car : Identifiable {
    let id = UUID()
    let title : String
    let headline : String
    let image : String
    let description : String
    let gradient : [Color]
    let models : [String]    
}
