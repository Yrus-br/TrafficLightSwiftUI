//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    
    var textUI = "Start"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 10) {
                VStack(spacing: 30) {
                    switch counter {
                    case 1:
                        RedLightView(isOn: true)
                        YellowLightView(isOn: false)
                        GreenLightView(isOn: false)
                    case 2:
                        RedLightView(isOn: false)
                        YellowLightView(isOn: true)
                        GreenLightView(isOn: false)
                    case 3:
                        RedLightView(isOn: false)
                        YellowLightView(isOn: false)
                        GreenLightView(isOn: true)
                    default:
                        RedLightView(isOn: false)
                        YellowLightView(isOn: false)
                        GreenLightView(isOn: false)
                    }
                }.shadow(color: .white, radius: 10)
                
                Spacer()
                    .frame(height: 200)
                
                Button() {
                    counter += 1
                    if counter == 4 {
                        counter = 0
                    }
                } label: {
                    Text(counter == 0 ? "Start" : "Next")
                }
                .buttonStyle(ButtonView())
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
