//
//  FooterView.swift
//  CarsApp
//
//  Created by Trend-HuB on 25/08/1445 AH.
//

import SwiftUI

struct FooterView: View {
 
    //Body
    var body: some View {
        
        GroupBox() {
            HStack{
                Link("Source : Wikipedia", destination: URL(string: "https://www.wikipedia.org")!)
                Spacer()
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

#Preview {
    FooterView()
}

