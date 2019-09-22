//
//  NetworkManager.swift
//  NoQueue
//
//  Created by Xpress Integration on 4/13/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import Moya
import IHProgressHUD

struct NetworkManager {

//    internal let provider = MoyaProvider<BaseApi>(manager: Manager(
//        configuration: URLSessionConfiguration.default,
//        serverTrustPolicyManager: CustomServerTrustPoliceManager()
//    ), plugins: [NetworkLoggerPlugin(verbose: true)])

    internal let provider = MoyaProvider<BaseApi>(plugins: [NetworkLoggerPlugin(verbose: true)])

    fileprivate var jsonDecoder = JSONDecoder()

    typealias ImageUploadCallback = (String?, Error?) -> Void

    typealias Callback<T: Decodable> = (T?, Error?) -> Void
    typealias SlotCallback<T: Decodable> = (T?, Error?) -> Void

    func sendOTP(phoneNumber: String, code: String, completion: @escaping Callback<UserResponse>) {
        fetchGenericData(endPoint: .sendOTP(phoneNumber: phoneNumber, code: code), completion: completion)
    }
    
    func updateUserInfo(userId: String, email: String, name: String, completion: @escaping Callback<UserResponse>) {
        fetchGenericData(endPoint: .updateUserInfo(userId: userId, email: email, name: name), completion: completion)
    }
    
    func checkUserExist(phoneNumber: String, completion: @escaping Callback<UserResponse>) {
        fetchGenericData(endPoint: .checkUserExist(phoneNumber: phoneNumber), completion: completion)
    }
    
    func resendOTPCode(phoneNumber: String, completion: @escaping Callback<UserResponse>) {
        fetchGenericData(endPoint: .resendOTPCode(phoneNumber: phoneNumber), completion: completion)
    }
    
    func getUserInfo(userId: String, completion: @escaping Callback<StartUpResponse>) {
        fetchGenericData(endPoint: .getUserInfo(userId: userId), completion: completion)
    }
    
    func getPreviousOrders(userId: String, page: Int?, completion: @escaping Callback<PreviousOrderResponse>) {
        fetchGenericData(endPoint: .getPreviousOrders(userId: userId, page: page), completion: completion)
    }
    
    func getRunningOrders(userId: String, page: Int?, completion: @escaping Callback<RunningOrderResponse>) {
    fetchGenericData(endPoint: .getRunningOrders(userId: userId, page: page), completion: completion)
    }
    
    func getSavedOrders(userId: String, page: Int?, completion: @escaping Callback<SavedOrderResponse>) {
    fetchGenericData(endPoint: .getSavedOrders(userId: userId, page: page), completion: completion)
    }
    
    func getOrderDetails(orderId: String, completion: @escaping Callback<OrderDetailsResponse>) {
    fetchGenericData(endPoint: .getOrderDetails(orderId: orderId), completion: completion)
    }
    
    func orderItems(completion: @escaping Callback<MakeOrderResponse>) {
    fetchGenericData(endPoint: .orderItems, completion: completion)
    }
    
    func rateOrder(userId: String, orderId: String, rate: String?, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .rateOrder(userId: userId, orderId: orderId, rate: rate), completion: completion)
    }
    
    func makeOrder(orderId: String, details: String?, addressId: String?, storeId: String?, completion: @escaping Callback<MakeOrderResponse>) {
    fetchGenericData(endPoint: .makeOrder(orderId: orderId, details: details ?? "", addressId: addressId ?? "", storeId: storeId), completion: completion)
    }
    
    func saveOrder(userId: String, orderId: String, details: String?, storeId: String?, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .saveOrder(userId: userId, orderId: orderId, details: details ?? ""), completion: completion)
    }
    
    func removeSavedOrder(userId: String, orderId: String, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .removeSavedOrder(userId: userId, orderId: orderId), completion: completion)
    }
    
    func sendSavedOrder(userId: String, orderId: String, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .sendSavedOrder(userId: userId, orderId: orderId), completion: completion)
    }
    
    func makeOrderCall(completion: @escaping Callback<MakeOrderResponse>) {
    fetchGenericData(endPoint: .makeOrderCall, completion: completion)
    }
    
    func updateSavedOrder(completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .updateSavedOrder, completion: completion)
    }
    
    func addUserAddress(userId: String, areaId: String, addressName: String, streetNumber: String?,
                        buildingNumber: String?, FloorNumber: String?, flatNumber: String?, completion: @escaping Callback<AddUpdateAddressResponse>) {
        fetchGenericData(endPoint: .addUserAddress(userId: userId, areaId: areaId, addressName: addressName, streetNumber: streetNumber, buildingNumber: buildingNumber, FloorNumber: FloorNumber, flatNumber: flatNumber), completion: completion)
    }
    
    func updateUserAddress(userId: String, addressId: String, areaId: String, addressName: String,
                           streetNumber: String?, buildingNumber: String?, FloorNumber: String?, flatNumber: String?, completion: @escaping Callback<AddUpdateAddressResponse>) {
    fetchGenericData(endPoint: .updateUserAddress(userId: userId, addressId: addressId, areaId: areaId, addressName: addressName, streetNumber: streetNumber, buildingNumber: buildingNumber, FloorNumber: FloorNumber, flatNumber: flatNumber), completion: completion)
    }
    
    func deleteUserAddress(addressId: String, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .deleteUserAddress(addressId: addressId), completion: completion)
    }
    
    func getInvoices(userId: String, orderId: Int?, completion: @escaping Callback<InvoiceResponse>) {
    fetchGenericData(endPoint: .getInvoices(userId: userId, orderId: orderId), completion: completion)
    }
    
    func getAddress(userId: String, completion: @escaping Callback<AddressesResponse>) {
    fetchGenericData(endPoint: .getAddress(userId: userId), completion: completion)
    }
    
    func getCategories(completion: @escaping Callback<CategoryResponse>) {
    fetchGenericData(endPoint: .getCategories, completion: completion)
    }
    
    func getAllStores(page: Int?, areaId: Int?, searchText: String?, completion: @escaping Callback<StoreResponse>) {
    fetchGenericData(endPoint: .getAllStores(page: page, areaId: areaId, searchText: searchText), completion: completion)
    }
    
    func getStoreDetails(orderId: String, completion: @escaping Callback<StoreDetailsResponse>) {
    fetchGenericData(endPoint: .getStoreDetails(orderId: orderId), completion: completion)
    }
    
    func registerDevice(deviceId: String, deviceIMIENumber: String?, registrationId: String?,
    deviceModel: String?, deviceType: String?, ram: String?, processor: String?, location: String?,
    deviceOS: String?, isUser: String?, isDriver: String?, userId: String, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .registerDevice(deviceId: deviceId, deviceIMIENumber: deviceIMIENumber, registrationId: registrationId, deviceModel: deviceModel, deviceType: deviceType, ram: ram, processor: processor, location: location, deviceOS: deviceOS, isUser: isUser, isDriver: isDriver, userId: userId), completion: completion)
    }
    
    func support(userId: String, title: String, message: String, completion: @escaping Callback<EmptyResponse>) {
    fetchGenericData(endPoint: .support(userId: userId, title: title, message: message), completion: completion)
    }

    fileprivate func fetchGenericData<T: Decodable>(endPoint: BaseApi, completion: @escaping Callback<T>) {
        IHProgressHUD.set(foregroundColor: #colorLiteral(red: 0.7019607843, green: 0.1411764706, blue: 0.2352941176, alpha: 1))
        if Connectivity.isConnectedToInternet {
            provider.request(endPoint) { (result) in
                switch result {
                case let .success(response):
                    do {
                        let filteredResponse = try response.filterSuccessfulStatusCodes()
                        let t = try filteredResponse.map(T.self)
                        completion(t, nil)
                    } catch let error {
                        completion(nil, error)
                    }
                case let .failure(error):
                    switch error {
                    case .encodableMapping(let error):
                        print("error in mapping \(error)")
                    default:
                        break
                    }
                    print("err: \(error)")
                    completion(nil, error)
                }
            }
        }
    }
}
