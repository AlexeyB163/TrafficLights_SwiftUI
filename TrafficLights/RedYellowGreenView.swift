//
//  RedYellowGreenView.swift
//  TrafficLights
//
//  Created by User on 30.03.2022.
//

import SwiftUI

struct RedYellowGreenView: View {
    
    var redCircle: some View {
        setCircle()
    }
    var yellowCircle: some View {
        setCircle()
    }
    var greenCircle: some View {
        setCircle()
    }
    
    
    var body: some View {
        VStack {
            redCircle
            yellowCircle
            greenCircle
        }
    }
    
    private func setCircle() -> some View{
        return Circle()
                .frame(width: 80, height: 80)
                .overlay(Circle().stroke(.white, lineWidth: 3))
    }
}

struct RedYellowGreenView_Previews: PreviewProvider {
    static var previews: some View {
        RedYellowGreenView()
    }
}
