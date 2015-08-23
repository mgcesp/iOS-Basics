//
//  ProductTableViewCell.swift
//  TableViews
//
//  Created by Manuel Cespedes on 8/23/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productID: UILabel!
    @IBOutlet weak var productAge: UILabel!
    @IBOutlet weak var productWeight: UILabel!
    
    func configureCellWith (product: Product) {
        
        productImageView.image = product.image
        productID.text = product.id
        productAge.text = product.age
        productWeight.text = product.weight
    }
}
