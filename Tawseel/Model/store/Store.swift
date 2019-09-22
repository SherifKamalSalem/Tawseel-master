//
//  Store.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import UIKit

class Store: Codable {
    var id: Int!
    var enName: String?
    var arName: String?
    var logo: String?
    var online: Int?
    var openHour: Int?
    var closeHour: Int?
    var areaId: String?
    var categoryId: String?
    var catName: String?
    var phone: String?
    var phone2: String?
    var phone3: String?
    var images: [String]?
    var coverageArea: [CoverageArea]?
    var offers: [OfferImage]?
    var storeCategory: [StoreItemCategory]?
    
    enum CodingKeys: String, CodingKey {
        case id = "ta_sto_id"
        case enName = "ta_sto_eng_name"
        case arName = "ta_sto_ara_name"
        case logo = "ta_sto_logo"
        case online = "ta_sto_online"
        case openHour = "ta_sto_open_hour"
        case closeHour = "ta_sto_close_hour"
        case areaId = "ta_ar_id"
        case categoryId = "ta_cat_id"
        case catName = "ta_addr_description"
        case phone = "ta_sto_number"
        case phone2 = "ta_sto_other_number"
        case phone3 = "ta_sto_landline"
        case images = "menu"
        case coverageArea = "coverage_area"
        case offers = "offer"
        case storeCategory = "store_category"
    }
}
