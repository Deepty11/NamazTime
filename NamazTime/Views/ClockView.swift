//
//  ClockView.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct ClockView: View {
    var body: some View {
        ZStack {
            Arc()
                .stroke(lineWidth: 2)
            Ticks()
            Numbers()
            
            Arc()
                .stroke(lineWidth: 4)
                .frame(width: 20, height: 20, alignment: .center)
            Arc()
                .stroke(lineWidth: 4)
                .frame(width: 10, height: 10, alignment: .center)
            
            // Minute Hand
            Hand(offset: 10)
                .fill()
                .frame(width: 2, alignment: .center)
            
            // Hour Hand
            Hand(offset: 5)
                .fill()
                .foregroundColor(Color.blue)
                .frame(width: 5, alignment: .center)
            Circle()
                .foregroundStyle(Color.blue)
                .frame(width: 15, height: 15, alignment: .center)
        }
        .frame(width: 200, height: 200, alignment: .center)
            
    }
}

#Preview {
    ClockView()
}
