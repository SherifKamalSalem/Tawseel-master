//
//  Constants.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/18/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import Foundation

struct Constants {
    static let BASE_URL = BASE_URL_IMAGES + "api/"
    static let BASE_URL_IMAGES = "http://hashcode.me/tawseel/"
    //MARK:- WEB SERVICES
    static let PREVIOUS_ORDERS = "getPervious"
    static let RUNNING_ORDERS = "getRunningOrder"
    static let UPDATE_USER_INFO = "updateInfo"
    static let LOGIN = "login"
    static let GET_INVOICES = "getInovices"
    
    static let ADD_ADDRESS = "addAddress"
    static let UPDATE_ADDRESS = "updateAddress"
    static let GET_ADDRESS = "getAddress"
    static let DELETE_ADDRESS = "deleteAddress"
    
    static let USER_INFO = "userInfo"
    static let SAVE_ORDER = "saveOrder"
    static let SET_INVALID_ORDER = "setInvalid"
    static let RATE_ORDER = "rateOrder"
    static let MAKE_ORDER = "makeOrder"
    static let GET_ORDER = "getOrder"
    static let SEND_SAVED_ORDER = "sendSavedOrder"
    static let UPDATE_SAVED_ORDER = "updateSaveOrder"
    static let REMOVE_SAVED_ORDER = "removeSaved"
    static let MAKE_SUPPORT = "makeSupport"
    static let CHECK_EXIST = "checkExist"
    static let RESEND_CODE = "reSendCode"
    static let CATEGORIES = "allCategory"
    static let STORES = "allStore"
    static let STORE_DETAILS_WITH_ITEMS = "storeDetailsWithItems"
    static let GET_STORE_BY_CATEGORY = "getStoreByCategory"
    static let REGISTER_DEVICE = "registerDevice"
    static let MAKE_ORDER_ITEMS = "orderItems"
    //MARK:- Paramters
    static let USER_ID = "ta_cli_id"
    static let PHONE_NUMBER = "cli_phone_number"
    static let EMIAL = "cli_email"
    static let OTP_CODE = "cli_code"
    static let NAME = "cli_name"
    static let SEARCH_TEXT = "ta_search_value"
    static let PAGE = "page"
    static let ORDER_ID = "ta_ord_id"
    static let ORDER_DETAILS = "ta_ord_detail"
    static let ORDER_RATE = "ta_ord_rate"
    static let ADDRESS_ID = "ta_addr_id"
    static let STORE_ID = "ta_sto_id"
    static let SUPPORT_TITLE = "ta_supp_title"
    static let SUPPORT_MESSAGE = "ta_supp_message"
    static let AREA_ID = "ta_ar_id"
    static let ADDRESS_NAME = "ta_addr_name"
    static let BUILDING_NUMBER = "ta_addr_build_number"
    static let ADDRESS_FLOOR = "ta_addr_floor"
    static let ADDRESS_FLAT = "ta_addr_flat"
    static let ADDRESS_STREET = "ta_addr_street"
    
    static let device_serial = "ta_device_serial"
    static let device_imie = "ta_device_imie"
    static let registration_id = "ta_registration_id"
    static let device_model = "ta_device_model"
    static let device_type = "ta_device_type"
    static let device_ram = "ta_device_ram"
    static let device_location = "ta_device_location"
    static let device_processo = "ta_device_processor"
    static let device_os = "ta_device_os"
    static let is_user = "ta_is_user"
    static let is_store = "ta_is_store"
    static let is_driver = "ta_is_driver"
    
    //MARK:- Controllers
    static let LOGIN_VC = "LoginController"
    static let OTP_VC = "OTPController"
    static let REGISTERATION_VC = "RegisterationController"
    //MARK:- StoryBoards
    static let MAIN_SB = "Main"
}
