//
//  InvoiceResponse.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

class InvoiceResponse: Codable {
    var success: Int!
    var invoices: [InvoiceDetails]?
    var message: String?
}
