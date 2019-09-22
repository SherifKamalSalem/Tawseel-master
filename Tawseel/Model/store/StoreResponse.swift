//
//  StoreResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class StoreResponse: Codable {
    var success: Int!
    var data: StoreList?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case data = "store"
        case message
    }
    
    class StoreList: Codable {
        var storeRequestId: Int
        
    }
}
