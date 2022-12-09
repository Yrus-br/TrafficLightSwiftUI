//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    var textUI = "Start"
    
    func printHi() {
    print("Hello")
    }
    
    func action() {
        
    }
    
    func buttonAction() {
        print("lol")
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                RedLightView()
                YellowLightView()
                GreenLightView()
                Button("Press me") { print("HI")}.buttonStyle(ButtonView())
                    
                }
                }
            }
        }
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
