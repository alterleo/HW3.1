//
//  Button.swift
//  TrafficLights
//
//  Created by Alexander Konovalov on 28.03.2021.
//

import SwiftUI

struct ButtonView: View {
    var textButton: String
    
    var body: some View {
        Text("\(textButton)")
            .font(.title)
            .foregroundColor(.white)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(textButton: "START")
    }
}
