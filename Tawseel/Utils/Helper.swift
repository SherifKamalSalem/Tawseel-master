//
//  Helper.swift
//  Tawseel
//
//  Created by Xpress Integration on 9/19/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//


import UIKit

func isValidEmail(emailStr: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: emailStr)
}

func getVC(storyboardName: String, identifier: String) -> UIViewController {
    return UIStoryboard.init(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier)
}
