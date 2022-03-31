//
//  ContentView.swift
//  TrafficLights
//
//  Created by User on 30.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.001
    @State private var opacityYellow = 0.001
    @State private var opacityGreen = 0.001
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                RedYellowGreenView().redCircle.foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: opacityRed))
                RedYellowGreenView().yellowCircle.foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: opacityYellow))
                RedYellowGreenView().greenCircle.foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: opacityGreen))
                Spacer()
                Button(action: {
                    changeOpacity()
                }, label: {
                    if opacityRed >= 1.0 || opacityYellow >= 1.0 || opacityGreen >= 1.0 {
                        Text ("NEXT")
                            .foregroundColor(.white)
                    } else {
                        Text("Start")
                            .foregroundColor(.white)
                    }
                })
                    .frame(width: 140, height: 50)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                    .background(Color.blue).cornerRadius(15)
            }
            .padding(.top, 20)
            .padding(.bottom, 30)
        }
    }
    
    private func changeOpacity(){
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
        } else if opacityRed == 1.0 {
            opacityRed = 0.001
            opacityYellow = 1.0
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.001
            opacityGreen = 1.0
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.001
            opacityRed = 1.0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
