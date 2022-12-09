//
//  YellowLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct YellowLightView: View {
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Spacer()
                .frame(height: 30)
        }
    }
}

struct YellowLightView_Previews: PreviewProvider {
    static var previews: some View {
        YellowLightView()
    }
}
