//
//  Ticks.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct Ticks: View {
    var body: some View {
        ForEach(0..<60) { minute in
            Tick(isLong: minute % 5 == 0 ? true : false)
                .stroke(lineWidth: 1)
                .rotationEffect(.radians(Double.pi * 2/60 * Double(minute)))
        }
    }
}

struct Tick: Shape {
    var isLong = false

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + (isLong ? 5 : 0))) // `y: rect.minY + 5 + (isLong ? 5 : 0)`for each case if to show all the minutes
        
        return path
    }
}

#Preview {
    Ticks()
}
