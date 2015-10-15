//
//  ViewController.swift
//  ImageText
//
//  Created by Manuel Cespedes on 10/14/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newImage = textToImage("A goal without a plan is only a wish", inImage: UIImage(named:"Beach")!, atPoint: CGPointMake(0, (imageView.image?.size.height)!/2))
        imageView.image = newImage
    }
    
    func takeSnapshot(view: UIView) -> UIImageView {
        
    }
    
    func textToImage(drawText: NSString, inImage: UIImage, atPoint:CGPoint)->UIImage{
        
        // Setup the font specific variables
        let textColor: UIColor = UIColor.whiteColor()
        let textFont: UIFont = UIFont(name: "Helvetica Bold", size: 50)!
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .Center
        
        //Setup the image context using the passed image.
        UIGraphicsBeginImageContext(inImage.size)
        
        //Setups up the font attributes that will be later used to dictate how the text should be drawn
        let textFontAttributes = [
            NSFontAttributeName: textFont,
            NSForegroundColorAttributeName: textColor,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
        //Put the image into a rectangle as large as the original image.
        inImage.drawInRect(CGRectMake(0, 0, inImage.size.width, inImage.size.height))
        
        // Creating a point within the space that is as big as the image.
        let rect: CGRect = CGRectMake(atPoint.x, atPoint.y, inImage.size.width, inImage.size.height)
        
        //Now Draw the text into an image.
        drawText.drawInRect(rect, withAttributes: textFontAttributes)
        
        // Create a new image out of the images we have created
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        
        // End the context now that we have the image we need
        UIGraphicsEndImageContext()
        
        //And pass it back up to the caller.
        return newImage
        
    }
    
    func overlay() {
        // 1. Create a context
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 512, height: 512), false, 0)
        //        let context = UIGraphicsGetCurrentContext()
        
        // 2. Define a paragraph style that aligns text to the center
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .Center
        
        // 3. Create an attributes dictionary containing that paragraph style
        let attr = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Thin", size: 36)!, NSParagraphStyleAttributeName: paragraphStyle]
        
        // 4. Draw a string to the screen using the attributes dictionary
        let string = "A goal without a plan is only a wish"
        string.drawWithRect(CGRect(x: 32, y: 32, width: 448, height: 448), options: .UsesLineFragmentOrigin, attributes: attr, context: nil)
        // 5. Load an image from the project and draw it to the context
        let image = UIImage(named: "Beach")
        image?.drawAtPoint(CGPoint(x: 300, y: 150))
        
        // 6. Retrieve a UIImage of the context's data, the end drawing
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // 7. Update the image view with finished result
        imageView.image = finalImage
        
    }
}

