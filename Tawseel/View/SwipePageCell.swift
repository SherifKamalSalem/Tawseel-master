//
//  SwipePageCell.swift
//  Tawseel
//
//  Created by Sherif Kamal on 9/17/19.
//  Copyright © 2019 Sherif Kamal. All rights reserved.
//

import UIKit

class SwipePageCell: UICollectionViewCell {

    static let cellIdentifier = "SwipePageCell"
    
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var subtitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    
}
