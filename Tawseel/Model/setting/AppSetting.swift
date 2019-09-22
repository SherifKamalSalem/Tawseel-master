//
//  AppSetting.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class AppSetting: Codable {
    var settingId: Int!
    var settingKey: String?
    var settingValue: String?
    
    enum CodingKeys: String, CodingKey {
        case settingId = "ta_setting_id"
        case settingKey = "ta_setting_key"
        case settingValue = "ta_setting_value"
    }
}
