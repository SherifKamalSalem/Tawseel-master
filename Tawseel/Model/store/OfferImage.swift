//
//  OfferImage.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class OfferImage: Codable {
    var offerId: String!
    var image: String!
    
    enum CodingKeys: String, CodingKey {
        case offerId = "ta_offer_id"
        case image = "ta_offer_image"
    }
}
