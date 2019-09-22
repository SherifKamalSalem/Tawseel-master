//
//  City.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class City: Codable {
    var cityId: String
    var enName: String?
    var arName: String?
    var areas: [Area]?
}
