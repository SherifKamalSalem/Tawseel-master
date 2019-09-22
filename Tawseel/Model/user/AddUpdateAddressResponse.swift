//
//  AddUpdateAddressResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class AddUpdateAddressResponse: Codable {
    var success: String!
    var addresses: [Address]?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case addresses = "data"
        case message
    }
}

