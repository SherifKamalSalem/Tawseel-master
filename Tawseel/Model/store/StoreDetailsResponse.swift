//
//  StoreDetailsResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import UIKit

class StoreDetailsResponse: Codable {
    var success: Int!
    var store: Store?
    var rate: String?
    var message: String?
    var rateCount: Int?
}
