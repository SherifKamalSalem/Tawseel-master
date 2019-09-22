//
//  StartUpResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class StartUpResponse: Codable {
    var success: Int!
    var userDetails: UserDetails?
    var locations: [City]?
    var categoryResponse: CategoryResponse?
    var settingResponse: SettingResponse?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success = "success"
        case userDetails = "data"
        case locations = "location"
        case categoryResponse = "categories"
        case settingResponse = "setting"
        case message = "message"
    }
}
