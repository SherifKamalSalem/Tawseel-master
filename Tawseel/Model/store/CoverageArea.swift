//
//  CoverageArea.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import UIKit

class CoverageArea: Codable {
    var id: Int!
    var storeId: Int!
    var areaId: Int?
    var shippingPrice: Double?
    var minShippingPrice: Int?
    var maxShippingPrice: Int?
    var defaultArea: Int?
    var estimatedIime: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "ta_coverage_id"
        case storeId = "ta_sto_id"
        case areaId = "ta_ar_id"
        case shippingPrice = "ta_ca_shippingPrice"
        case minShippingPrice = "ta_ca_min_shippingPrice"
        case maxShippingPrice = "ta_ca_max_shippingPrice"
        case defaultArea = "ta_default_area"
        case estimatedIime = "ta_ca_estimated_time"
    }
}
