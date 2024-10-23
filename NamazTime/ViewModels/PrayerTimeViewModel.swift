//
//  PrayerTimeViewModel.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 9/10/24.
//

import SwiftUI

class PrayerTimeViewModel: ObservableObject {
    var date: Date!
    let service = PrayerTimeEndPointService()
    @Published var dailyPrayerTime: DailyPrayerTime!
    
    var hour: Int {
        let dateComponent = Calendar.current.dateComponents([.hour, .minute], from: date)
        return dateComponent.hour ?? 12
    }
    
    var minute: Int {
        let dateComponent = Calendar.current.dateComponents([.hour, .minute], from: date)
        return dateComponent.minute ?? 12
    }

    var timings: Timings? {
        dailyPrayerTime?.data.timings
    }
    
    var today: String? {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY"
        return dateFormatter.string(from: date)
    }
    
    func retrieveDailyPrayerData() async {
        await service.getDailyPrayerInformation(params: TimingsByCityParams(date: today, city: "Dhaka", country: "Bangladesh")) {[weak self] prayerTime in
            self?.dailyPrayerTime = prayerTime
        }
    }
    
    
}
