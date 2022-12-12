//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 10.12.2022.
//

import SwiftUI

struct TrafficLight: View {
    
    let color: Color
    let alpha: Double
    
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(color)
                .frame(width: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .opacity(alpha)
        }
    }
}

