//
//  Web Service Extension.swift
//  Tawseel
//
//  Created by Sherif Kamal on 9/22/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import IHProgressHUD

extension HomeController {
    
    func getAddresses() {
        networkProvider.getAddress(userId: "1") { (addressResponse, <#Error?#>) in
            <#code#>
        }
    }
    
    func getAllStores(page: Int?, areaId: Int?, searchText: String?) {
        networkProvider.getAllStores(page: page, areaId: areaId, searchText: searchText) { (storeResponse, error) in
            if let error = error {
                IHProgressHUD.showError(withStatus: error.localizedDescription)
                return
            }
            guard let storeResponse = storeResponse else { return }
        }
    }
}
