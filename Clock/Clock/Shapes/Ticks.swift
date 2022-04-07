//
//  Ticks.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 07.04.2022.
//

import SwiftUI

// MARK: - Ticks view

struct Ticks: View {
    var body: some View {
        ZStack {
            ForEach(0..<60) { position in
                Tick(isLong: position % 5 == 0)
                    .stroke(lineWidth: 2)
                    .rotationEffect(
                        .radians(
                            Double.pi * 2 / 60 * Double(position)
                        )
                    )
            }
        }
    }
}

struct Ticks_Previews: PreviewProvider {
    static var previews: some View {
        Ticks()
    }
}
