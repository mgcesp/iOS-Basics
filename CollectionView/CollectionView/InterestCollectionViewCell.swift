//
//  InterestCollectionViewCell.swift
//  CollectionView
//
//  Created by Manuel Cespedes on 10/7/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    // MARK: Public API
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    private func updateUI() {
        
        label?.text! = interest.title
        featuredImageView?.image! = interest.featuredImage
    }
}
