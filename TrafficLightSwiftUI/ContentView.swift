//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    
    private var textUI = "Start"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 250) {
                VStack(spacing: 30) {
                    switch counter {
                    case 1:
                        TrafficLight(color: .red, isOn: true)
                        TrafficLight(color: .yellow, isOn: false)
                        TrafficLight(color: .green, isOn: false)
                    case 2:
                        TrafficLight(color: .red, isOn: false)
                        TrafficLight(color: .yellow, isOn: true)
                        TrafficLight(color: .green, isOn: false)
                    case 3:
                        TrafficLight(color: .red, isOn: false)
                        TrafficLight(color: .yellow, isOn: false)
                        TrafficLight(color: .green, isOn: true)
                    default:
                        TrafficLight(color: .red, isOn: false)
                        TrafficLight(color: .yellow, isOn: false)
                        TrafficLight(color: .green, isOn: false)
                    }
                }.shadow(color: .white, radius: 10)
                
                Button() {
                    counter += 1
                    if counter == 4 {
                        counter = 0
                    }
                } label: {
                    Text(counter == 0 ? "Start" : "Next")
                        .font(.title2)
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
