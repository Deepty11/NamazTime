//
//  PrayerTimeRow.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 15/10/24.
//

import SwiftUI

struct PrayerTimeRow: View {
    var body: some View {
        HStack(spacing: 18) {
            PrayerTimeView()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Fazr")
                    .font(.system(.title))
                    .fontWeight(.bold)
                HStack {
                    ScheduleTimeView(time: "4:35 AM", scheduleType:  .startsAt)
                    Rectangle()
                        .frame(width: 1, height: 50)
                    ScheduleTimeView(time: "5:10 AM", scheduleType:  .jamatAt)
                }
            }
        }
        
    }
}

#Preview {
    PrayerTimeRow()
}
