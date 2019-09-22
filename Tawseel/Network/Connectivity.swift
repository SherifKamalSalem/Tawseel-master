//
//  Connectivity.swift
//  NoQueue
//
//  Created by Xpress Integration on 5/2/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import Alamofire

class Connectivity {
    class var isConnectedToInternet: Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}
