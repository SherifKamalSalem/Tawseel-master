//
//  LoginController.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import UIKit
import IHProgressHUD

class LoginController: UIViewController {

    @IBOutlet weak var phoneNumTxtField: RoundedTxtField!
    
    private let networkProvider = NetworkManager()
    private var OTPCode: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IHProgressHUD.set(foregroundColor: #colorLiteral(red: 0.6980392157, green: 0.1411764706, blue: 0.2352941176, alpha: 1))
        IHProgressHUD.set(borderColor: #colorLiteral(red: 0.6980392157, green: 0.1411764706, blue: 0.2352941176, alpha: 1))
    }
    
    private func checkIfPhoneNumberExist(phoneNumber: String) {
        if let phoneNumber = phoneNumTxtField.text, phoneNumber != "" {
            IHProgressHUD.show(withStatus: "Please Wait for sending OTP")
            networkProvider.checkUserExist(phoneNumber: phoneNumber) { (userResponse, error) in
                if let error = error {
                    IHProgressHUD.showError(withStatus: error.localizedDescription)
                    IHProgressHUD.dismissWithDelay(50)
                    return
                }
                IHProgressHUD.dismiss()
                guard let userResponse = userResponse, let OTPCode = userResponse.userDetails?.clientCode else { return }
                self.OTPCode = String(OTPCode)
                
                DispatchQueue.main.async {
                    let otpVC = getVC(storyboardName: Constants.MAIN_SB, identifier: Constants.OTP_VC) as! OTPController
                    otpVC.phoneNumber = phoneNumber
                    otpVC.OTPCode = String(OTPCode)
                    self.present(otpVC, animated: true)
                }
            }
        }
    }
    
    @IBAction func enterBtnPressed(_ sender: Any) {
        if let phoneNumber = phoneNumTxtField.text, phoneNumber != "" {
            checkIfPhoneNumberExist(phoneNumber: phoneNumber)
        }
    }
}
