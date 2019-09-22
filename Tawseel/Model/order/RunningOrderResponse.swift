//
//  RunningOrderResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class RunningOrderResponse: Codable {
    var success: Int!
    var data: SavedOrder?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case data = "runningOrder"
        case message
    }
}
