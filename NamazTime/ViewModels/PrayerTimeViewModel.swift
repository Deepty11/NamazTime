//
//  PrayerTimeViewModel.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 9/10/24.
//

import Foundation

class PrayerTimeViewModel {
    var date: Date!
    
    var hour: Int {
        let dateComponent = Calendar.current.dateComponents([.hour, .minute], from: date)
        return dateComponent.hour ?? 12
    }
    
    var minute: Int {
        let dateComponent = Calendar.current.dateComponents([.hour, .minute], from: date)
        return dateComponent.minute ?? 12
    }

    
//    func getHour() {
//        let hour = Calendar.current.dateComponents([.hour, .minute], from: date)
//        
//    }
}
