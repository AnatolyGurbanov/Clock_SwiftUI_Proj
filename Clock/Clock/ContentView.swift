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
            Numbers()
            Circle()
                .fill()
                .frame(width: 15, height: 15, alignment: .center)
            /// Часовая стрелка
            Hand(offset: 10)
                .fill()
                .frame(width: 4, alignment: .center)
            /// Минутная стрелка
            Hand(offset: 10)
                .fill()
                .frame(width: 3, alignment: .center)
            /// Секундная стрелка
            Hand(offset: 5)
                .foregroundColor(.red)
                .frame(width: 2, alignment: .center)
            Circle()
                .foregroundColor(.red)
                .frame(width: 7, height: 7, alignment: .center)
        }
        .frame(width: 200, height: 200, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
