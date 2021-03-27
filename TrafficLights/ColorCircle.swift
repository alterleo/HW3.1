//
//  ColorCircle.swift
//  TrafficLights
//
//  Created by Alexander Konovalov on 26.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    var hue: Double
    var brightness: Double
    
    var body: some View {
        Circle()
//            .foregroundColor(color)
            .foregroundColor(Color(hue: hue, saturation: 1, brightness: brightness))
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color .white, lineWidth: 4) )
            .shadow(radius: 10 )
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(hue: 0.002, brightness: 0.5)
    }
}
