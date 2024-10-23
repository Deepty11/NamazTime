//
//  DailyPrayerTime.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 17/10/24.
//

import Foundation

class DailyPrayerTime: Codable, ObservableObject {
    var data: PrayerData
}

class PrayerData: Codable {
    var timings: Timings
}

class Timings: Codable {
    var Fajr: String
    var Dhuhr: String
    var Asr: String
    var Maghrib: String
    var Isha: String
    var Imsak: String
    var Midnight: String
    var Firstthird: String
    var Lastthird: String
}
