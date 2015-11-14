//
//  ViewController.swift
//  Images
//
//  Created by Manuel Cespedes on 10/24/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Divide by a whole number to reduce the original size 
        // A new CGSize can be computer by scaling the width and height individually
        let size = CGSize(width: imageView.image!.size.width / 2, height: imageView.image!.size.height / 2)
        
        let image = UIImage(contentsOfFile: <#T##String#>)
    }
}

