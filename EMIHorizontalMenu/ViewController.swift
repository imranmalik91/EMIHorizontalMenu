//
//  ViewController.swift
//  EMIHorizontalMenu
//
//  Created by Imran Malik on 9/29/17.
//  Copyright © 2017 Imran Malik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menu: EMIHorizontalMenu!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let items = ["Imran","apra","pranjal ranka","surbhi","shruti kothari","neha","rt","ravindra rathod","sarvesh","rohit dubey","ronak","vipin"]
    
    let colors:[UIColor] = [.red,.blue,.green,.brown,.lightGray,.yellow,.gray,.cyan,.groupTableViewBackground,.purple,.orange,.magenta]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menu.emidelegate = self
        menu.items = items
        collectionView.reloadData()
    }

   

    override func viewWillLayoutSubviews() {
        collectionView.collectionViewLayout.invalidateLayout()
    }

}




