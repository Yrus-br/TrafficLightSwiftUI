//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct ButtonView: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
        }
    }
