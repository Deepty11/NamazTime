//
//  ScheduleTimeView.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 15/10/24.
//

import SwiftUI

enum PrayerScheduleType: String {
    case startsAt = "Starts at"
    case jamatAt = "Jamat at"
}

struct ScheduleTimeView: View {
    var time: String!
    var scheduleType: PrayerScheduleType!

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 4) {
                Image(systemName: scheduleType == .startsAt
                      ? "hourglass"
                      : "play.circle")
                Text(time)
            }
            Text(scheduleType.rawValue)
                .font(.system(.caption))
                .foregroundStyle(Color.secondary)
        }
    }
}

#Preview {
    ScheduleTimeView(time: "4:35 AM", scheduleType: .startsAt)
}
