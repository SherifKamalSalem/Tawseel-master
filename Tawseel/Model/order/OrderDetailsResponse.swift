//
//  OrderDetailsResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class OrderDetailsResponse: Codable {
    var success: Int!
    var order: OrderDetails?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case order = "data"
        case message
    }
}
