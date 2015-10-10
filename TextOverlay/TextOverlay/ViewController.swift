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
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        photoImage.image = selected
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    /**********************************************************/
    // MARK: Actions
    
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
    
    @IBAction func overlayText(sender: AnyObject) {
        
        let text = label.text
        
        photoImage.image = overlay(text!, inImage: photoImage.image!, atPoint: CGPoint(x: 100, y: 100))
        
    }
    
    func overlay(drawText: NSString, inImage: UIImage, atPoint: CGPoint) -> UIImage {
        
        let textColor: UIColor = UIColor.whiteColor()
        let textFont: UIFont = UIFont(name: "Helvetica Bold", size: 100)!
        
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









































