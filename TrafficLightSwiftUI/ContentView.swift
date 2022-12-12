//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    @State private var currentTL: CurrentLight = .off
    
    private func changeTrafficLight() {
        switch currentTL {
        case .off:
            currentTL = .red
            buttonTitle = "Next"
        case .red:
            currentTL = .yellow
        case .yellow:
            currentTL = .green
        case .green:
            currentTL = .off
            buttonTitle = "Start"
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 150) {
                VStack(spacing: 30) {
                    TrafficLight(
                        color: .red,
                        alpha: currentTL == .red ? 1 : 0.3
                    )
                    TrafficLight(
                        color: .yellow,
                        alpha: currentTL == .yellow ? 1 : 0.3
                    )
                    TrafficLight(
                        color: .green,
                        alpha: currentTL == .green ? 1 : 0.3
                    )
                }
                
                Button(buttonTitle) {
                    changeTrafficLight()
                }
                .buttonStyle(ButtonView())
                
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
