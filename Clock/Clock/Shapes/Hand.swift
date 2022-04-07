//
//  Hand.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 08.04.2022.
//

import SwiftUI

struct Hand: Shape {
    var offset: CGFloat = 0.0

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let rect = CGRect(
            origin: CGPoint(x: rect.origin.x, y: rect.origin.y + offset),
            size: CGSize(width: rect.width, height: rect.height/2 - offset)
        )
        let cornerSize = CGSize(width: rect.width/2, height: rect.width/2)
        
        path.addRoundedRect(in: rect, cornerSize: cornerSize)
        return path
    }
}

struct Hand_Previews: PreviewProvider {
    static var previews: some View {
        Hand()
    }
}
