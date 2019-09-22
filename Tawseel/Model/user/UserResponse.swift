//
//  UserResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class UserResponse: Codable {
    var success: String!
    var userDetails: UserDetails?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case userDetails = "data"
        case message
    }
}
