//
//  UserDetails.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class UserDetails: Codable {
    var userId: Int!
    var fullname: String?
    var phoneNumber: String?
    var email: String?
    var clientCode: String?
    var freeShippingOrders: String?
    var isVerified: Int?
    var address: String?
    
    enum CodingKeys: String, CodingKey {
        case userId = "ta_cli_id"
        case fullname = "cli_name"
        case phoneNumber = "cli_phone_number"
        case email = "cli_email"
        case isVerified = "is_verified"
        case clientCode = "cli_code"
        case freeShippingOrders = "free_shipping_orders"
        case address = "address"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let clientCodeInt = try? container.decodeIfPresent(Int.self, forKey: .clientCode)
        let clientCodeStr = try? container.decodeIfPresent(String.self, forKey: .clientCode)
        self.clientCode = clientCodeStr ?? String(clientCodeInt!)
    }
}
