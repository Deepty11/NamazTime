//
//  PrayerTimeParams.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 16/10/24.
//

import Foundation
struct TimingsByCityParams {
    var date: Date?
    var city: String?
    var country: String?
    var urlParams: [String: AnyObject]? {
        var dict = [String: AnyObject]()

        dict["date"] = date as AnyObject
        dict["country"] = city as AnyObject
        dict["city"] = country as AnyObject

        return dict
    }
}
