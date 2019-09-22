//
//  BaseApi.swift
//  NoQueue
//
//  Created by Xpress Integration on 4/13/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation
import Moya
import UIKit

let defaults = UserDefaults.standard

enum BaseApi {
    //MARK:- AUTH
    case sendOTP(phoneNumber: String, code: String)
    case updateUserInfo(userId: String, email: String, name: String)
    case checkUserExist(phoneNumber: String)
    case resendOTPCode(phoneNumber: String)
    case getUserInfo(userId: String?)
    //-------------------------------------------------------------------------------------
    
    //MARK:- Address
    case getPreviousOrders(userId: String, page: Int?)
    case getRunningOrders(userId: String, page: Int?)
    case getSavedOrders(userId: String, page: Int?)
    case getOrderDetails(orderId: String)
    case orderItems
    case saveOrder(userId: String, orderId: String?, details: String)
    case setInvalidOrder(orderId: String, userId: String)
    case rateOrder(userId: String, orderId: String, rate: String?)
    case makeOrder(orderId: String, details: String, addressId: String, storeId: String?)
    case removeSavedOrder(userId: String, orderId: String)
    case sendSavedOrder(userId: String, orderId: String)
    case makeOrderCall
    case updateSavedOrder
    //-------------------------------------------------------------------------------------
    
    //MARK:- Address
    case addUserAddress(userId: String, areaId: String, addressName: String, streetNumber: String?, buildingNumber: String?, FloorNumber: String?, flatNumber: String?)
    case updateUserAddress(userId: String, addressId: String, areaId: String, addressName: String, streetNumber: String?, buildingNumber: String?, FloorNumber: String?, flatNumber: String?)
    case deleteUserAddress(addressId: String)
    case getInvoices(userId: String, orderId: Int?)
    case getAddress(userId: String)
    //-------------------------------------------------------------------------------------
    
    case getCategories
    case getAllStores(page: Int?, areaId: Int?, searchText: String?)
    case getStoreDetails(orderId: String)
    
    case registerDevice(deviceId: String, deviceIMIENumber: String?, registrationId: String?, deviceModel: String?, deviceType: String?, ram: String?, processor: String?, location: String?, deviceOS: String?, isUser: String?, isDriver: String?, userId: String)
    
    case support(userId: String, title: String, message: String)
    
}

extension BaseApi: TargetType {
    var path: String {
        switch self {
        case .sendOTP:
            return Constants.LOGIN
        case .updateUserInfo:
            return Constants.UPDATE_USER_INFO
        case .checkUserExist:
            return Constants.CHECK_EXIST
        case .resendOTPCode:
            return Constants.RESEND_CODE
        case .getUserInfo:
            return Constants.USER_INFO
        case .getPreviousOrders:
            return Constants.PREVIOUS_ORDERS
        case .getRunningOrders:
            return Constants.RUNNING_ORDERS
        case .getSavedOrders:
            return Constants.SAVE_ORDER
        case .getOrderDetails:
            return Constants.ORDER_DETAILS
        case .orderItems:
            return Constants.MAKE_ORDER_ITEMS
        case .saveOrder:
            return Constants.SAVE_ORDER
        case .setInvalidOrder:
            return Constants.SET_INVALID_ORDER
        case .rateOrder:
            return Constants.RATE_ORDER
        case .makeOrder:
            return Constants.MAKE_ORDER
        case .removeSavedOrder:
            return Constants.REMOVE_SAVED_ORDER
        case .sendSavedOrder:
            return Constants.SEND_SAVED_ORDER
        case .makeOrderCall:
            return Constants.MAKE_ORDER
        case .updateSavedOrder:
            return Constants.UPDATE_SAVED_ORDER
        case .addUserAddress:
            return Constants.ADD_ADDRESS
        case .updateUserAddress:
            return Constants.UPDATE_ADDRESS
        case .deleteUserAddress:
            return Constants.DELETE_ADDRESS
        case .getInvoices:
            return Constants.GET_INVOICES
        case .getAddress:
            return Constants.GET_ADDRESS
        case .getCategories:
            return Constants.CATEGORIES
        case .getAllStores:
            return Constants.STORES
        case .getStoreDetails:
            return Constants.STORE_DETAILS_WITH_ITEMS
        case .registerDevice:
            return Constants.REGISTER_DEVICE
        case .support:
            return Constants.MAKE_SUPPORT
        }
    }

    var method: Moya.Method {
        return .post
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .sendOTP(let phoneNumber, let code):
            return .requestParameters(parameters: [Constants.PHONE_NUMBER : phoneNumber, Constants.OTP_CODE : code], encoding: URLEncoding.queryString)
        case .updateUserInfo(let userId, let email, let name):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.EMIAL : email, Constants.NAME: name], encoding: URLEncoding.queryString)
        case .checkUserExist(let phoneNumber):
            return .requestParameters(parameters: [Constants.PHONE_NUMBER : phoneNumber], encoding: URLEncoding.queryString)
        case .resendOTPCode(let phoneNumber):
            return .requestParameters(parameters: [Constants.PHONE_NUMBER : phoneNumber], encoding: URLEncoding.queryString)
        case .getUserInfo(let userId):
            return .requestParameters(parameters: [Constants.USER_ID : userId], encoding: URLEncoding.queryString)
        case .getPreviousOrders(let userId, let page):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.PAGE : page], encoding: URLEncoding.queryString)
        case .getRunningOrders(let userId, let page):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.PAGE : page], encoding: URLEncoding.queryString)
        case .getSavedOrders(let userId, let page):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.PAGE : page], encoding: URLEncoding.queryString)
        case .getOrderDetails(let orderId):
            return .requestParameters(parameters: [Constants.ORDER_ID : orderId], encoding: URLEncoding.queryString)
        case .orderItems:
            return .requestPlain
        case .setInvalidOrder(let orderId, let userId):
            return .requestParameters(parameters: [Constants.ORDER_ID : orderId, Constants.USER_ID : userId], encoding: URLEncoding.queryString)
        case .rateOrder(let userId, let orderId, let rate):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.ORDER_ID : orderId, Constants.RATE_ORDER : rate], encoding: URLEncoding.queryString)
        case .makeOrder(let orderId, let details, let addressId, let storeId):
            return .requestParameters(parameters: [Constants.ORDER_ID : orderId, Constants.ORDER_DETAILS : details, Constants.ADDRESS_ID : addressId, Constants.STORE_ID : storeId], encoding: URLEncoding.queryString)
        case .saveOrder(let userId, let orderId, let details):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.ORDER_ID : orderId, Constants.ORDER_DETAILS : details], encoding: URLEncoding.queryString)
        case .removeSavedOrder(let userId, let orderId):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.ORDER_ID : orderId], encoding: URLEncoding.queryString)
        case .sendSavedOrder(let userId, let orderId):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.ORDER_ID : orderId], encoding: URLEncoding.queryString)
        case .makeOrderCall:
            return .requestPlain
        case .updateSavedOrder:
            return .requestPlain
        case .addUserAddress(let userId, let areaId, let addressName, let streetNumber,
            let buildingNumber, let floorNumber, let flatNumber):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.AREA_ID : areaId, Constants.ADDRESS_NAME : addressName, Constants.ADDRESS_STREET : streetNumber, Constants.BUILDING_NUMBER : buildingNumber, Constants.ADDRESS_FLOOR : floorNumber, Constants.ADDRESS_FLAT : flatNumber], encoding: URLEncoding.queryString)
        case .updateUserAddress(let userId, let addressId, let areaId, let addressName,
                                let streetNumber, let buildingNumber, let floorNumber, let flatNumber):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.ADDRESS_ID : addressId, Constants.AREA_ID : areaId, Constants.ADDRESS_NAME : addressName, Constants.ADDRESS_STREET : streetNumber, Constants.BUILDING_NUMBER : buildingNumber, Constants.ADDRESS_FLOOR : floorNumber, Constants.ADDRESS_FLAT : flatNumber], encoding: URLEncoding.queryString)
        case .deleteUserAddress(let addressId):
            return .requestParameters(parameters: [Constants.ADDRESS_ID : addressId], encoding: URLEncoding.queryString)
        case .getInvoices(let userId, let orderId):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.ORDER_ID : orderId], encoding: URLEncoding.queryString)
        case .getAddress(let userId):
            return .requestParameters(parameters: [Constants.USER_ID : userId], encoding: URLEncoding.queryString)
        case .getCategories:
            return .requestPlain
        case .getAllStores(let page, let areaId, let searchText):
            return .requestParameters(parameters: [Constants.PAGE : page, Constants.AREA_ID : areaId, Constants.SEARCH_TEXT : searchText], encoding: URLEncoding.queryString)
        case .getStoreDetails(let orderId):
            return .requestParameters(parameters: [Constants.ORDER_ID : orderId], encoding: URLEncoding.queryString)
        case .registerDevice(let deviceId, let deviceIMIENumber, let registrationId,
                            let deviceModel, let deviceType, let ram, let processor, let location,
                            let deviceOS, let isUser, let isDriver, let userId):
            return .requestParameters(parameters: [Constants.device_serial : deviceId, Constants.device_imie : deviceIMIENumber, Constants.registration_id : registrationId, Constants.device_model : deviceModel, Constants.device_type : deviceType, Constants.device_ram : ram, Constants.device_processo : processor, Constants.device_location : location, Constants.device_os : deviceOS, Constants.is_user
                : isUser, Constants.is_driver : isDriver, Constants.USER_ID : userId], encoding: URLEncoding.queryString)
        case .support(let userId, let title, let message):
            return .requestParameters(parameters: [Constants.USER_ID : userId, Constants.SUPPORT_TITLE : title, Constants.SUPPORT_MESSAGE : message], encoding: URLEncoding.queryString)
        }
    }

    var headers: [String: String]? {
        return [:]
    }

    var baseURL: URL {
        guard let url = URL(string: Constants.BASE_URL) else { fatalError("baseURL could not be configured.") }
        return url
    }
}
