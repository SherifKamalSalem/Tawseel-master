//
//  StoreItemCategory.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class StoreItemCategory: Codable {
    var arName: String?
    var enName: String?
    var storeCategoryId: Int?
    var storeId: Int?
    var items: [StoreItem]?
    
    enum CodingKeys: String, CodingKey {
        case arName = "ta_sto_item_arabic_name"
        case enName = "ta_sto_item_english_name"
        case storeCategoryId = "ta_store_category_id"
        case storeId = "ta_sto_id"
        case items = "items"
    }
}
