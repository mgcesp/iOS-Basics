//
//  ViewController.swift
//  TextOverlay
//
//  Created by Manuel Cespedes on 10/9/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    // MARK: Properties
    @IBOutlet weak var oldImage: UIImageView!
    @IBOutlet weak var newImage: UIImageView!
    
    
//    let text = "Today I will do what others won't, so tomorrow I can accomplish what others can't."

    let text = "Manuel Cespedes"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image =  oldImage.image
        
        let size = CGSizeApplyAffineTransform(image!.size, CGAffineTransformMakeScale(0.75, 0.75))
        let hasAlpha = false
        let scale: CGFloat = 0.5 // Automatically use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(size, !hasAlpha, scale)
        image!.drawInRect(CGRect(origin: CGPointZero, size: size))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        newImage.image = scaledImage
        
//        photoImage.image = overlay(text, inImage: photoImage.image!, atPoint: CGPoint(x: 100, y: 100))
    }
    

    /**********************************************************/
    // MARK: Actions

    func overlay(drawText: NSString, inImage: UIImage, atPoint: CGPoint) -> UIImage {
        // Setup font variables
        let textColor: UIColor = UIColor.whiteColor()
        let textFont: UIFont = UIFont(name: "HelveticaNeue-Light", size: 20)!
        // Setup the image context
        UIGraphicsBeginImageContext(inImage.size)
        // Setup the font attributes
        let textFontAttributes = [
            NSFontAttributeName: textFont,
            NSForegroundColorAttributeName: textColor
        ]
        // Put image into a rectangle as large as the original image
        inImage.drawInRect(CGRectMake(0, 0, inImage.size.width, inImage.size.height))
        // Create a point within the space that is a bit as the image
        let rect: CGRect = CGRectMake(atPoint.x, atPoint.y, inImage.size.width, inImage.size.height)
        // Draw the text into the field
        drawText.drawInRect(rect, withAttributes: textFontAttributes)
        // Create a new image out of the images created
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        // End the context
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
        
    /**********************************************************/
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss picker
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // Get the selected image
        let selected = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        oldImage.image = selected
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    /**********************************************************/
    // MARK: UIImagePicker Actions
    
    @IBAction func getImage(sender: AnyObject) {
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.sourceType = .Camera
        
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
    @IBAction func getRoll(sender: AnyObject) {
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.sourceType = .PhotoLibrary
        
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
}









































