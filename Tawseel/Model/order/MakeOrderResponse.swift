//
//  MakeOrderResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class MakeOrderResponse: Codable {
    var success: Int!
    var orderId: Int?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case orderId = "data"
        case message
    }
}
