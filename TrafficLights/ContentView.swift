//
//  ContentView.swift
//  TrafficLights
//
//  Created by Alexander Konovalov on 26.03.2021.
//

import SwiftUI

struct ContentView: View {
    private var hueArr = [0.007, 0.17, 0.337]
    @State private var brightArr = [0.3, 0.3, 0.3]
    @State private var lastIndx = 0
    @State private var textButton = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(hue: hueArr[0], brightness: brightArr[0])
                ColorCircle(hue: hueArr[1], brightness: brightArr[1])
                ColorCircle(hue: hueArr[2], brightness: brightArr[2])
                Spacer()
                Button( action: {
                    if textButton == "START" {
                        textButton="NEXT"
                        brightArr[lastIndx] = 1
                    } else {
                        brightArr[lastIndx] = 0.3
                        lastIndx = ((lastIndx+1)%3)
                        brightArr[lastIndx] = 1
                    }
                    
                }) {
                    Text("\(textButton)")
                        .font(.title)
                        .foregroundColor(.white)
                        
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 50)
                .background(Color.blue)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 4))
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
