//
//  OTPController.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import UIKit
import CBPinEntryView
import IHProgressHUD

class OTPController: UIViewController {

    @IBOutlet weak var OTPEntryView: CBPinEntryView! {
        didSet {
            OTPEntryView.spacing = 31
            OTPEntryView.entryFont = UIFont(name: "Lato-Bold", size: 30) ?? UIFont.systemFont(ofSize: 30)
            OTPEntryView.becomeFirstResponder()
            OTPEntryView.delegate = self
        }
    }
    
    
    var phoneNumber: String?
    var OTPCode: String?
    var networkProvider = NetworkManager()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 12, *) {
            OTPEntryView.textContentType = .oneTimeCode
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IHProgressHUD.set(foregroundColor: #colorLiteral(red: 0.6980392157, green: 0.1411764706, blue: 0.2352941176, alpha: 1))
        IHProgressHUD.set(borderColor: #colorLiteral(red: 0.6980392157, green: 0.1411764706, blue: 0.2352941176, alpha: 1))
        
    }
    
    func login() {
        if let phoneNumber = phoneNumber {
            let OTPCode = OTPEntryView.getPinAsString()
            networkProvider.sendOTP(phoneNumber: phoneNumber, code: OTPCode) { (userResponse, error) in
                if let error = error {
                    IHProgressHUD.showError(withStatus: error.localizedDescription)
                    IHProgressHUD.dismissWithDelay(50)
                    return
                }
                guard let userResponse = userResponse else { return }
                if userResponse.success == "1" {
                    DispatchQueue.main.async {
                        IHProgressHUD.showSuccesswithStatus(userResponse.message)
                        let homeNavVC = getVC(storyboardName: Constants.MAIN_SB, identifier: "HomeNavController")
                        self.present(homeNavVC, animated: true)
                    }
                } else {
                    DispatchQueue.main.async {
                        IHProgressHUD.showError(withStatus: userResponse.message)
                    }
                }
            }
        }
    }
    
    func resendOTPCode() {
        if let phoneNumber = phoneNumber {
            IHProgressHUD.show(withStatus: "Please Wait for resending another code")
            networkProvider.resendOTPCode(phoneNumber: phoneNumber) { (userResponse, error) in
                if let error = error {
                    IHProgressHUD.showError(withStatus: error.localizedDescription)
                    return
                }
                guard let userResponse = userResponse else { return }
                
            }
        }
    }
    
    @IBAction func enterBtnPressed(_ sender: Any) {
        login()
    }
    
    @IBAction func resendCodeBtnPressed(_ sender: Any) {
        
    }
    
}

extension OTPController: CBPinEntryViewDelegate {
    func entryCompleted(with entry: String?) {
        
    }
    
    
    func entryChanged(_ completed: Bool) {
        if completed {
            print(OTPEntryView.getPinAsString())
        }
    }
}
