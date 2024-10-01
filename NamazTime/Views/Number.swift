//
//  Number.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct Number: View {
    var hour: Int
    var body: some View {
        VStack {
            Text(hour % 3 == 0 ? "\(hour)" : "") // showing only 4 numbers on the clock
                .font(.callout)
                .rotationEffect(.radians(Double.pi * 2/12 * Double(hour)))
            Spacer()
        }
        .padding()
        .rotationEffect(.radians(-Double.pi * 2/12 * Double(hour)))
        
    }
}

struct Numbers: View {
    var body: some View {
        ForEach(1..<13) { hour in
            Number(hour: hour)
        }
    }
}

#Preview {
    Numbers()
}
