//
//  OrderDetails.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/16/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class OrderDetails: Codable {
    var orderId: String?
    var clientId: String?
    var addressId: String?
    var orderDetail: String?
    var orderStatus: Int!
    var driverId: String?
    var orderRate: Int?
    var storeId: String?
    var storeRate: String?
    var orderLng: String?
    var orderLat: String?
    var orderTotalPrice: String?
    var orderShippingPrice: String?
    var orderDate: String?
    var orderEstimateTime: String?
    var createdAt: String?
    var updatedAt: String?
    var orderVoice: String?
    var invoicesCount: String?
    var driver: Driver?
    
    enum CodingKeys: String, CodingKey {
        case orderId = "ta_ord_id"
        case clientId = "ta_cli_id"
        case addressId = "ta_addr_id"
        case orderDetail = "ta_ord_detail"
        case orderStatus = "ta_ord_status"
        case driverId = "ta_dri_id"
        case orderRate = "ta_ord_rate"
        case storeId = "ta_sto_id"
        case storeRate = "ta_sto_rate"
        case orderLng = "ta_ord_lon"
        case orderLat = "ta_ord_lat"
        case orderTotalPrice = "ta_ord_totalPrice"
        case orderShippingPrice = "ta_ord_shippingPrice"
        case orderDate = "ta_ord_date"
        case orderEstimateTime = "ta_ord_estimate_time"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case orderVoice = "ta_ord_voice"
        case invoicesCount = "invoices_count"
        case driver = "driver"
    }
}
