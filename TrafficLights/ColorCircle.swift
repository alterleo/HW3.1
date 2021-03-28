//
//  ColorCircle.swift
//  TrafficLights
//
//  Created by Alexander Konovalov on 26.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color .opacity(opacity))
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color .white, lineWidth: 4) )
            .shadow(radius: 10 )
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
