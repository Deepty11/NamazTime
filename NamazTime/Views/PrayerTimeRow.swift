//
//  PrayerTimeRow.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 15/10/24.
//

import SwiftUI

struct PrayerTimeRow: View {
    var prayerTime: PrayerTime

    var body: some View {
        HStack(spacing: 18) {
            Card {
                ClockView(timeString: prayerTime.startAt)
                    .frame(width: 70, height: 70)
            }
            
            VStack(alignment: .leading, spacing: 2) {
                Text(prayerTime.name)
                    .font(.system(.title3))
                    .fontWeight(.bold)
                HStack {
                    ScheduleTimeView(time: prayerTime.startAt, scheduleType:  .startsAt)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 1, height: 40)
                    ScheduleTimeView(time: prayerTime.jamatAt, scheduleType:  .jamatAt)
                }
            }
        }
        
    }
}

#Preview {
    PrayerTimeRow(prayerTime: prayerTimeData[0])
}
