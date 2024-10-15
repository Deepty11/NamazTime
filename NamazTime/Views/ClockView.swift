//
//  ClockView.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct ClockView: View {
    var hourAngle: Double = 0.0
    var minuteAngle: Double = 0.0

    var body: some View {
        ZStack {
            Arc()
                .fill(Color.white)
                .stroke(Color.black, lineWidth: 2)
            Ticks()
            Numbers()

            Arc()
                .stroke(lineWidth: 4)
                .frame(width: 10, height: 10, alignment: .center)

            Arc()
                .stroke(lineWidth: 4)
                .frame(width: 5, height: 5, alignment: .center)

            // Minute Hand
            Hand(offset: 5)
//                .fill()
                .stroke(lineWidth: 2)
                .frame(width: 4, alignment: .center)
                .rotationEffect(.radians(minuteAngle))

            // Hour Hand
            Hand(offset: 10)
                .stroke(lineWidth: 2)
                .frame(width: 4, alignment: .center)
                .rotationEffect(.radians(hourAngle))

            Circle()
                .foregroundStyle(.gray)
                .frame(width: 10, height: 10, alignment: .center)
        }
        .frame(width: 80, height: 80, alignment: .center)
    }
}

#Preview {
    ClockView()
}
