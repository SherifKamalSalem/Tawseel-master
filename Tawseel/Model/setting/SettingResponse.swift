//
//  SettingResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class SettingResponse: Codable {
    var success: Int!
    var setting: [AppSetting]?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case setting = "data"
        case message
    }
}
