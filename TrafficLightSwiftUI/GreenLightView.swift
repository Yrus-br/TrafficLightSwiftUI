//
//  GreenLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Jorgen Shiller on 09.12.2022.
//

import SwiftUI

struct GreenLightView: View {
    var body: some View {
        Circle()
            .foregroundColor(.green)
            .frame(width: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        Spacer()
            .frame(height: 150)
    }
}

struct GreenLightView_Previews: PreviewProvider {
    static var previews: some View {
        GreenLightView()
    }
}
