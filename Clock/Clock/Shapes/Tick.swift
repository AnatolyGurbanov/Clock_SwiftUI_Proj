//
//  Tick.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 07.04.2022.
//

import SwiftUI

// MARK: - Ticks shape

struct Tick: Shape {
    var isLong: Bool = false

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + 5 + (isLong ? 5 : 0)))

        return path
    }
}
