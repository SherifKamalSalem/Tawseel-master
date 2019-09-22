//
//  LocationResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class LocationResponse: Codable {
    var success: Int!
    var location: [City]?
    var message: String?
}
