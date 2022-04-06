//
//  Tick.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 07.04.2022.
//

import SwiftUI

// MARK: - Ticks shape

struct Tick: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + 5))

        return path
    }
}
