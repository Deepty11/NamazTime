//
//  DateUtil.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 9/10/24.
//

import Foundation

class DateUtil {

    var dateFormatter = DateFormatter()
    var format = "hh:mm a"
    
    func convertToTime(from timeString: String) -> Date? {
        dateFormatter.dateFormat = format
        dateFormatter.locale = .current
        return dateFormatter.date(from: timeString)
    }
    
    
}
