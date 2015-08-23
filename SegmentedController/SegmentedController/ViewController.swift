//
//  ViewController.swift
//  SegmentedController
//
//  Created by Manuel Cespedes on 8/23/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var controller: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeSegment(sender: AnyObject) {
        
        if controller.selectedSegmentIndex == 0 {
            label.text = "HELLO!"
        }
        
        if controller.selectedSegmentIndex == 1 {
            label.text = "HOLA!"
        }
        
        if controller.selectedSegmentIndex == 2 {
            label.text = "BONJOUR!"
        }
        
    }
}

