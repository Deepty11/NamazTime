//
//  Hand.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct Hand: Shape {
    var offset : CGFloat = .zero
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addRoundedRect(
            in: CGRect(
                origin: CGPoint(x: rect.origin.x, y: rect.origin.y + offset), 
                size: CGSize(width: rect.width, height: rect.height/2 - offset)),
            cornerSize: CGSize(
                width: rect.width / 2,
                height: rect.height / 2))
        
        return path
    }
    
}


#Preview {
    Hand(offset: 10)
}
