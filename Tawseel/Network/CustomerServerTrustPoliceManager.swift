//
//  CustomerServerTrustPoliceManager.swift
//  SkipQ
//
//  Created by Xpress Integration on 9/12/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//
import Moya
import Alamofire

class CustomServerTrustPoliceManager : ServerTrustPolicyManager {
    override func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? {
        return .disableEvaluation
    }
    public init() {
        super.init(policies: [:])
    }
}
