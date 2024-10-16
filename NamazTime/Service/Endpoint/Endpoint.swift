//
//  Endpoint.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 16/10/24.
//

import Foundation

protocol EndPoint {
    var path: String? { get }
    var params: [String: AnyObject]? { get }
    var placeHolder: [String: Any]? { get }
    var apiVersion: APIVersion? { get }
    var method: Method? { get }
}
