//
//  ContentView.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 06.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Arc(
                startAngle: .radians(0),
                endAngle: .radians(Double.pi * 2),
                clockWise: true
            )
            .stroke(lineWidth: 3)
            Ticks()
        }
        .frame(width: 200, height: 200, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
