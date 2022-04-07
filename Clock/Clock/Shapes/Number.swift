//
//  Number.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 07.04.2022.
//

import SwiftUI

struct Number: View {
    var hour: Int

    var body: some View {
        VStack {
            Text("\(hour)")
                .fontWeight(.bold)
                .rotationEffect(
                    .radians(-(Double.pi * 2 / 12 * Double(hour)))
                )
            Spacer()
        }
        .padding()
        .rotationEffect(
            .radians(Double.pi * 2 / 12 * Double(hour))
        )
    }
}

struct Number_Previews: PreviewProvider {
    static var previews: some View {
        Number(hour: 1)
    }
}
