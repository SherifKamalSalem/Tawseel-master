//
//  AddressResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class AddressesResponse: Codable {
    var success: String!
    var addresses: [Address]?
    var message: String?
}
