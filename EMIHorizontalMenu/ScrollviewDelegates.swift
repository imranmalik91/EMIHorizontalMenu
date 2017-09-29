//
//  ScrollviewDelegates.swift
//  EMIHorizontalMenu
//
//  Created by Imran Malik on 9/29/17.
//  Copyright © 2017 Imran Malik. All rights reserved.
//

import UIKit

//MARK:- scrollView Delegates
extension ViewController:UIScrollViewDelegate {
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        if let collection = scrollView as? UICollectionView {
            
            //calculating index of scrolled collectionview
            if collection.tag == 0 {
                let index = targetContentOffset.pointee.x / view.frame.width
                menu.selectItemWithIndex(index: Int(index))
            }
        }
    }
    
}

