//
//  SunView.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 23/10/24.
//

import SwiftUI

struct SunView: View {
    var rectangleHeight: CGFloat = 4
    var spacerHeight: CGFloat = 28

    var body: some View {
        ZStack {
            Color.black
            Circle()
                .fill(.linearGradient(Gradient(colors: [.yellow, .red]), startPoint: .top, endPoint: .bottom))

            VStack {
                ForEach(0..<6) { index in
                    VStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: rectangleHeight * (CGFloat(index) + 1) )
                        Spacer()
                            .frame(height: spacerHeight - (rectangleHeight * CGFloat(index)))
                    }
                }
            }
            .offset(y: 108)
        }
    }
}

#Preview {
    SunView()
}
