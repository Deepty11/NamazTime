//
//  Arc.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct Arc: Shape {
    let startAngle = Angle(radians: 0)
    let endAngle = Angle(radians: Double.pi * 2)
    let clockWise = true
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width / 2, rect.height / 2)

        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockWise)
        
        return path
    }

}

#Preview {
    Arc()
}
