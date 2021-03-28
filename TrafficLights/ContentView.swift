//
//  ContentView.swift
//  TrafficLights
//
//  Created by Alexander Konovalov on 26.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var opacitiArr = [0.5, 0.5, 0.5]
    @State private var lastIndx = 0
    @State private var textButton = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, opacity: opacitiArr[0])
                ColorCircle(color: .yellow, opacity: opacitiArr[1])
                ColorCircle(color: .green, opacity: opacitiArr[2])
                Spacer()
                Button( action: buttonAction) {
                    ButtonView(textButton: textButton)
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
    
    func buttonAction()
    {
        if textButton == "START" {
            textButton="NEXT"
            opacitiArr[lastIndx] = 1
        } else {
            opacitiArr[lastIndx] = 0.5
            lastIndx = ((lastIndx+1)%3)
            opacitiArr[lastIndx] = 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
