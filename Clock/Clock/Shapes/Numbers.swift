//
//  Numbers.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 08.04.2022.
//

import SwiftUI

struct Numbers: View {
    var body: some View {
        ZStack {
            ForEach(1..<13) { hour in
                Number(hour: hour)
            }
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers()
    }
}
