//
//  ViewController.swift
//  Slider
//
//  Created by Manuel Cespedes on 9/30/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func changeFont(sender: AnyObject) {
        // Assign the label's font size as the value of the slider
        label.font = UIFont(name: "Verdana", size: CGFloat(slider.value))
        
    }

}

