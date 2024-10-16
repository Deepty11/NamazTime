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
                .fill(Color.gray)
                .stroke(Color.black, lineWidth: 1)
                .frame(width: 4, alignment: .center)
                .rotationEffect(.radians(minuteAngle))

            // Hour Hand
            Hand(offset: 10)
                .fill(Color.red)
                .stroke(Color.black, lineWidth: 1)
                .frame(width: 4, alignment: .center)
                .rotationEffect(.radians(hourAngle))

            Circle()
                .foregroundStyle(.black)
                .frame(width: 10, height: 10, alignment: .center)
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
        //.frame(width: 70, height: 70, alignment: .center)
    }
}

#Preview {
    ClockView(timeString: "4:31 AM")
}
