//
//  Address.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class Address: Codable {
    var id: Int!
    var addressName: String
    var areaId: Int?
    var street: String?
    var buildNumber: String?
    var floorNumber: String?
    var flatNumber: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "ta_addr_id"
        case addressName = "ta_addr_name"
        case areaId = "ta_ar_id"
        case street = "ta_addr_street"
        case buildNumber = "ta_addr_build_number"
        case floorNumber = "ta_addr_floor"
        case flatNumber = "ta_addr_flat"
    }
}
