//
//  HorizontalMenuDelegate.swift
//  EMIHorizontalMenu
//
//  Created by Imran Malik on 9/29/17.
//  Copyright © 2017 Imran Malik. All rights reserved.
//

import UIKit

//Horizontal menu delegate
extension ViewController:HorizontalMenuDelegate {
    func didSelectAtIndex(index: Int) {
        if index <= collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: index, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}
