//
//  RedLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct RedLightView: View {
    
    var isOn: Bool
    
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(.red)
                .frame(width: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 5)
                .opacity(isOn ? 1 : 0.5)
        }
    }
}

