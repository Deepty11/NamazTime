//
//  PrayerTimeData.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 16/10/24.
//

import Foundation

struct PrayerTime {
    var name: String
    var startAt: String
    var jamatAt: String
}

var prayerTimeData = [
    PrayerTime(name: "Fajr", startAt: "4:31 AM", jamatAt: "5:10 AM"),
    PrayerTime(name: "Dhuhr", startAt: "11:53 AM", jamatAt: "1:15 PM"),
    PrayerTime(name: "Asr", startAt: "4:15 PM", jamatAt: "5:00 PM"),
    PrayerTime(name: "Maghrib", startAt: "5:58 PM", jamatAt: "6:10 PM"),
    PrayerTime(name: "Isha", startAt: "7:13 PM", jamatAt: "8:15 PM")
]


