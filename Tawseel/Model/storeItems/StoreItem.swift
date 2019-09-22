//
//  StoreItem.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class StoreItem: Codable {
    var image: String?
    var enDescription: String?
    var arDescription: String?
    var arName: String?
    var enName: String?
    var note: String?
    var storeCategoryId: Int?
    var quantity: Int?
    var storeId: Int?
    var storeItemId: Int?
    var price: Double?
    
    enum CodingKeys: String, CodingKey {
        case image = "ta_sto_item_image"
        case enDescription = "ta_sto_item_english_desc"
        case arDescription = "ta_sto_item_arabic_desc"
        case arName = "ta_sto_item_arabic_name"
        case enName = "ta_sto_item_english_name"
        case note = "ta_order_item_note"
        case storeCategoryId = "ta_store_category_id"
        case quantity = "ta_order_item_quantity"
        case storeId = "ta_sto_id"
        case storeItemId = "ta_store_item_id"
        case price = "ta_sto_item_price"
    }
}
