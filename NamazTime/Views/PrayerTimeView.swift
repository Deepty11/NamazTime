//
//  PrayerTimeView.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 9/10/24.
//

import SwiftUI

struct PrayerTimeView: View {
    var body: some View {
        Card {
            ClockView(hourAngle: 4, minuteAngle: 8)
        }
        
    }
}

struct Card<Content: View>: View {
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            content
        }
        .padding(10)
        .background(Color.gray, in: .rect(cornerRadius: 10))
    }
    
}

#Preview {
    PrayerTimeView()
}
