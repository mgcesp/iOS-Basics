//
//  ViewController.swift
//  ImageOverlay
//
//  Created by Manuel Cespedes on 10/7/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = textToImage("These are my raybans!", inImage: UIImage(named: "raybans")!, atPoint: CGPoint(x: 100,y: 100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textToImage(drawText: NSString, inImage: UIImage, atPoint: CGPoint) -> UIImage {
        
        let textColor: UIColor = UIColor.whiteColor()
        let textFont: UIFont = UIFont(name: "Helvetica Bold", size: 50)!
        
        UIGraphicsBeginImageContext(inImage.size)
        
        let textFontAttributes = [
            NSFontAttributeName: textFont,
            NSForegroundColorAttributeName: textColor
        ]
        
        inImage.drawInRect(CGRectMake(0, 0, inImage.size.width, inImage.size.height))
        
        let rect: CGRect = CGRectMake(atPoint.x, atPoint.y, inImage.size.width, inImage.size.height)
        
        drawText.drawInRect(rect, withAttributes: textFontAttributes)
        
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
    
}

