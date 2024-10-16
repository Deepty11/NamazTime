//
//  ClockView.swift
//  NamazTime
//
//  Created by Rehnuma Reza Deepty on 1/10/24.
//

import SwiftUI

struct ClockView: View {
    @State var hourAngle: Double = 0.0
    @State var minuteAngle: Double = 0.0
    var timeString: String
    
    @State var time: Date?

    var body: some View {
        ZStack {
            Arc()
                .fill(Color.white)
                .stroke(Color.gray, lineWidth: 1)
            Ticks()
            Numbers()

            clockHand(offset: 5, angle: minuteAngle, handType: .minute)
            clockHand(offset: 15, angle: hourAngle, handType: .hour)

            Arc()
                .stroke(Color.black, lineWidth: 4)
                .frame(width: 10, height: 10, alignment: .center)

            Circle()
                .foregroundStyle(Color.white)
                .frame(width: 5, height: 5, alignment: .center)
        }
        .onAppear {
            time = DateUtil().convertToTime(from: timeString)

            let dateComponent = Calendar.current.dateComponents([.hour, .minute], from: time ?? Date())

            if let hour = dateComponent.hour, let minute = dateComponent.minute {
                print(hour)
                print(minute)
                let radianInHour = 2 * Double.pi / 12
                let radianInMinute = 2 * Double.pi / 60

                let actualHour = Double(hour) + Double(minute/60)

                minuteAngle = Double(minute) * radianInMinute
                hourAngle = actualHour * radianInHour
            }
            
        }
    }
    
    func clockHand(offset: Double, angle: Double, handType: HandType) -> some View {
        Hand(offset: offset)
            .fill(handType == .hour
                  ? Color.black
                  : Color(red: 0.7, green: 0.7, blue: 0.7))
            .stroke(Color.black, lineWidth: 0.6)
            .frame(width: 4, alignment: .center)
            .rotationEffect(.radians(angle))
    }
}

#Preview {
    ClockView(timeString: "4:31 AM")
}

enum HandType {
    case hour
    case minute
}
