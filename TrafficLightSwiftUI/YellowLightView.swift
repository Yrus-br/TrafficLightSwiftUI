//
//  YellowLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct YellowLightView: View {
    
    var isOn: Bool
    
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .opacity(isOn ? 1 : 0.5)
                .shadow(radius: 5)
        }
    }
}

