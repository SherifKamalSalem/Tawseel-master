//
//  RoundedButton.swift
//  Tawseel
//
//  Created by Sherif Kamal on 9/18/19.
//  Copyright © 2019 Sherif Kamal. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    func setup() {
        layer.cornerRadius = 20
        backgroundColor = #colorLiteral(red: 0.7586607933, green: 0.2224133611, blue: 0.2999532819, alpha: 1)
        layer.masksToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
}
