//
//  ProductDetailViewController.swift
//  TableViews
//
//  Created by Manuel Cespedes on 8/23/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    // Model
    var product: Product?
    
    @IBOutlet weak var productImageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        productImageView.image = product?.image
    }

}
