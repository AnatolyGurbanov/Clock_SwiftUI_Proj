//
//  Arc.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 07.04.2022.
//

import SwiftUI

// MARK: - Arc shape

struct Arc: Shape {

    // Variables

    var startAngle: Angle = .radians(0)
    var endAngle: Angle = .radians(Double.pi * 2)
    var clockWise: Bool = true

    // Functions

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width/2, rect.height/2)
        
        path.addArc(
            center: center,
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: clockWise
        )

        return path
    }
}
