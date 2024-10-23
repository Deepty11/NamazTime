//
//  PrayerTimeParams.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 16/10/24.
//

import Foundation
struct TimingsByCityParams {
    var date: String?
    var city: String?
    var country: String?
    var urlParams: [String: AnyObject]? {
        var dict = [String: AnyObject]()

        dict["country"] = country as AnyObject
        dict["city"] = city as AnyObject

        return dict
    }
}
