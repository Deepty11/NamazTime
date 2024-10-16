//
//  PrayerTimeEndPoint.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 16/10/24.
//

import Foundation

enum PrayerTimeEndPoint {
    case timingsByCity(TimingsByCityParams)
}

extension PrayerTimeEndPoint: EndPoint {
    //let baseURL = "http://api.aladhan.com" ///v1/timingsByCity/16-10-2024?date=16-10-2024&city=Dhaka&country=Bangladesh"

    var path: String? {
        switch self {
            case .timingsByCity: "timingsByCity/:date"
        }
    }

    var params: [String : AnyObject]? {
        switch self {
            case .timingsByCity(let params): params.urlParams
        }
    }
    
    var placeHolder: [String : Any]? {
        switch self {
            case .timingsByCity(let params): ["formId" : params.date]
        }
    }

    var apiVersion: APIVersion? {
        switch self {
            case .timingsByCity(_): .v1
        }
    }

    var method: Method? {
        switch self {
            case .timingsByCity(_): .get
        }
    }


}

enum APIVersion: String {
    case v1 = "v1"
    case v2 = "v2"
}

enum Method {
    case get
    case post
}

