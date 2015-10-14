//
//  ViewController.swift
//  TextProperties
//
//  Created by Manuel Cespedes on 10/13/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func setColor(sender: AnyObject) {
        label.textColor = UIColor.redColor()
    }
    
    @IBAction func setFontSize(sender: AnyObject) {
        label.font = UIFont(name: "Verdana", size: 30)
    }

    @IBAction func setShadow(sender: AnyObject) {
        label.layer.shadowColor = UIColor.blackColor().CGColor
        label.layer.shadowOffset = CGSizeMake(2, 2)
        label.layer.shadowRadius = 2
        label.layer.shadowOpacity = 0.25
    }
}