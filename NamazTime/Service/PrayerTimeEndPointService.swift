//
//  PrayerTimeEndPointService.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 16/10/24.
//

import Foundation

class PrayerTimeEndPointService {
    let urlResolver = URLResolver()
    
    //http://api.aladhan.com/v1/timingsByCity/16-10-2024?date=16-10-2024&city=Dhaka&country=Bangladesh
    func getDailyPrayerInformation(params: TimingsByCityParams,
                                   completion: (DailyPrayerTime) -> Void) async {
        let dailyPrayerTimeEndpoint = PrayerTimeEndPoint.timingsByCity(params)
        if let url = urlResolver.getURL(for: dailyPrayerTimeEndpoint.path,
                                        apiVersion: dailyPrayerTimeEndpoint.apiVersion,
                                        params: dailyPrayerTimeEndpoint.params,
                                        placeHolders: dailyPrayerTimeEndpoint.placeHolder) {
            print("URL:", url)
            
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                
                let string = String(data: data, encoding: .utf8)
                let fetchedData = try JSONDecoder().decode(DailyPrayerTime.self, from: data)
                completion(fetchedData)
            } catch {
                print(error.localizedDescription)
            }
        }
        
    }
}
