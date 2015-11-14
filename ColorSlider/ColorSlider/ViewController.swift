//
//  ViewController.swift
//  ColorSlider
//
//  Created by Manuel Cespedes on 11/14/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var image: UIImageView!
    
    var colorsArray = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),  //teal color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0),  //yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),   //red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0),    //dark color
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),  //purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0),  //green color
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(sender: AnyObject) {
        // Use the slider value as the index of the color array
        image.image = getImageWithColor(colorsArray[Int(slider.value)], size: image.image!.size)
    }
    
    func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        // Create rectangle object of the same size as original image
        let rect = CGRectMake(0, 0, size.width, size.height)
        // Create graphics context
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        // Set fill from given color
        color.setFill()
        // Fill rectangle
        UIRectFill(rect)
        // Create new image from context
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        // End graphics context
        UIGraphicsEndImageContext()
        return image
    }
    
    func randomColor() -> UIColor {
        let unsignedArrayCount = UInt32(colorsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return colorsArray[randomNumber]
    }
}

