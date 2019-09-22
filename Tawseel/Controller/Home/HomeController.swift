//
//  HomeController.swift
//  Tawseel
//
//  Created by Sherif Kamal on 9/21/19.
//  Copyright © 2019 Xpress Integration. All rights reserved.
//

import UIKit


class HomeController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let Headerheight : CGFloat = 350
    private let headerCut : CGFloat = 50
    
    var newHeaderLayer : CAShapeLayer!
    var headerView : UIView!
    let networkProvider = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateView() {
        tableView.backgroundColor = UIColor.white
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        tableView.rowHeight = UITableView.automaticDimension
        tableView.addSubview(headerView)
        
        newHeaderLayer = CAShapeLayer()
        newHeaderLayer.fillColor = UIColor.black.cgColor
        headerView.layer.mask = newHeaderLayer

        let newheight = Headerheight - headerCut / 2
        tableView.contentInset = UIEdgeInsets(top: newheight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -newheight)
        
        self.setupNewView()
    }
    
    func setupNewView() {
        let newheight = Headerheight - headerCut / 2
        var getheaderframe = CGRect(x: 0, y: -newheight, width: tableView.bounds.width, height: Headerheight)
        
        if tableView.contentOffset.y < newheight {
            getheaderframe.origin.y = tableView.contentOffset.y
            getheaderframe.size.height = -tableView.contentOffset.y + headerCut / 2
        }
        
        headerView.frame = getheaderframe
        let cutdirection = UIBezierPath()
        cutdirection.move(to: CGPoint(x: 0, y: 0))
        cutdirection.addLine(to: CGPoint(x: getheaderframe.width, y: 0))
        cutdirection.addLine(to: CGPoint(x: getheaderframe.width, y: getheaderframe.height))
        cutdirection.addLine(to: CGPoint(x: 0, y: getheaderframe.height - headerCut))
        newHeaderLayer.path = cutdirection.cgPath
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.setupNewView()
    }
}

extension HomeController: UITableViewDataSource, UITableViewDelegate {
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.tableView.decelerationRate = UIScrollView.DecelerationRate.fast
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // Tableview Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UITableViewCell
        return UITableViewCell()
    }
}
