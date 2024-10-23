//
//  URLResolver.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 17/10/24.
//

import Foundation

class URLResolver {
    let baseUrl = "https://api.aladhan.com"
    //https://api.aladhan.com/v1/timingsByCity/16-10-2024?date=16-10-2024&city=Dhaka&country=Bangladesh
    func getURL(for apiUrl: String? = nil,
                apiVersion: APIVersion? = nil,
                params: [String: AnyObject]? = nil,
                placeHolders: [String: Any]? = nil ) -> URL? {
        var url = baseUrl

        if let apiVersion {
            url += "/\(apiVersion.rawValue)"
        }

        if let apiUrl {
            url += "/\(apiUrl)"
        }

        if let placeHolders {
            for (key, value) in placeHolders {
                url = url.replacingOccurrences(of: ":" + key, with: String(describing: value))
            }
        }

        if let params {
            let url = createParams(from: url, params: params)
            return url
        }

        return URL(string: url)
    }
    
    func createParams(from urlString: String, params: [String: AnyObject]) -> URL? {
        var urlComponent = URLComponents(string: urlString)
        urlComponent?.queryItems = params.map { URLQueryItem(name: $0.key, value: $0.value as? String)}

        return urlComponent?.url
    }
}
