//
//  SwipingController.swift
//  Tawseel
//
//  Created by Sherif Kamal on 9/17/19.
//  Copyright © 2019 Sherif Kamal. All rights reserved.
//

import UIKit
import SCPageControl

struct Intro {
    var imageName: String
    var title: String
    var subtitle: String
}

class SwipingController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var pageControl: SCPageControlView!
    @IBOutlet weak var nextBtn: UIButton! {
        didSet {
            nextBtn.layer.cornerRadius = 30
        }
    }
    @IBOutlet weak var collectionView: UICollectionView!
    
    var introList = [
        Intro(imageName: "Group", title: "Save Your Time And Money", subtitle: "Order From Multiple Places In Just One Order And Get Charged For Delivery Just Once"),
        Intro(imageName: "Group2", title: "Easier Than Ever", subtitle: "Don’t Waste Time With Call Center You Can Both Type And Voice Record Your Order"),
        Intro(imageName: "Group3", title: "Never Forget Your Needs", subtitle: "Type Your Orders Now And Save Them To Order Later Anytime")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupPageControl()
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = SnappingLayout()
        collectionView.setCollectionViewLayout(layout, animated: true)
        layout.scrollDirection = .horizontal
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.decelerationRate = .fast
        collectionView.isPagingEnabled = true
        let nib = UINib(nibName: "SwipePageCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: SwipePageCell.cellIdentifier)
    }
    
    func setupPageControl() {
        pageControl.scp_style = .SCNormal
        pageControl.set_view(3, current: 0, current_color: #colorLiteral(red: 0.7586607933, green: 0.2224133611, blue: 0.2999532819, alpha: 1), disable_color: #colorLiteral(red: 0.7586607933, green: 0.2224133611, blue: 0.2999532819, alpha: 1))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return introList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SwipePageCell.cellIdentifier, for: indexPath) as! SwipePageCell
        cell.titleLbl.text = introList[indexPath.item].title
        cell.subtitleLbl.text = introList[indexPath.item].subtitle
        cell.introImage.image = UIImage(named: introList[indexPath.item].imageName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 375)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        pageControl.scroll_did(collectionView)
    }
    
    @IBAction func skipBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        let currentPage = round(collectionView.contentOffset.x / UIScreen.main.bounds.size.width)
        if currentPage >= 2 {
            let loginVC = getVC(storyboardName: Constants.MAIN_SB, identifier: Constants.LOGIN_VC) as! LoginController
            present(loginVC, animated: true)
        } else {
            let next = currentPage + 1
            collectionView?.scrollToItem(at: IndexPath(item: Int(next), section: 0), at: .centeredHorizontally, animated: true)
        }
    }
}
