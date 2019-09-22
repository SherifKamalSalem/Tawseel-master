//
//  CategoryResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class CategoryResponse: Codable {
    var success: Int!
    var categories: [Category]?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case categories = "data"
        case message
    }
}
