//
//  ContentView.swift
//  Clock
//
//  Created by Anatoly Gurbanov on 06.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State var date: Date = Date()
    
    var body: some View {
        let calendar = Calendar.current
        let dateComponents = calendar.dateComponents([.hour, .minute, .second], from: date)
        
        /// convert date to angle
        var hourAngle: Double = 0
        var minuteAngle: Double = 0
        var secondAngle: Double = 0
        
        if let hour = dateComponents.hour,
           let minute = dateComponents.minute,
           let second = dateComponents.second {
            
            let radianInOneHour = 2 * Double.pi / 12
            let radianInOneMinute = 2 * Double.pi / 60
            
            minuteAngle = Double(minute) * radianInOneMinute
            
            let actualHour = Double(hour) + (Double(minute)/60)
            
            hourAngle = actualHour * radianInOneHour
            
            secondAngle = Double(second) * radianInOneMinute
        }
        
        return ZStack {
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
            Hand(offset: 40)
                .fill()
                .frame(width: 4, alignment: .center)
                .rotationEffect(.radians(hourAngle))
            /// Минутная стрелка
            Hand(offset: 10)
                .fill()
                .frame(width: 3, alignment: .center)
                .rotationEffect(.radians(minuteAngle))
            /// Секундная стрелка
            Hand(offset: 5)
                .foregroundColor(.red)
                .frame(width: 2, alignment: .center)
                .rotationEffect(.radians(secondAngle))
            Circle()
                .foregroundColor(.red)
                .frame(width: 7, height: 7, alignment: .center)
        }
        .frame(width: 200, height: 200, alignment: .center)
        .onAppear(perform: start)
    }
    
    func start() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.date = Date()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
