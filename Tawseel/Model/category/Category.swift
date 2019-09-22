//
//  Category.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class Category: Codable {
    var categoryId: Int!
    var enName: String?
    var arName: String?
    
    enum CodingKeys: String, CodingKey {
        case categoryId = "ta_cat_id"
        case enName = "ta_cat_eng_name"
        case arName = "ta_cat_ara_name"
    }
}
