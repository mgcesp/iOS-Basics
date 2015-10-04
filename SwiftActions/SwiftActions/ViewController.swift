//
//  ViewController.swift
//  SwiftActions
//
//  Created by Manuel Cespedes on 9/30/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Modify segmented control here to load at startup
        loadSegmentedControl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectSegment(sender: AnyObject) {
        
        if segmentedControl.selectedSegmentIndex == 0 {
            label.text = "Segment One"
        }
        if segmentedControl.selectedSegmentIndex == 1 {
            label.text = "Segment Two"
        }
        if segmentedControl.selectedSegmentIndex == 2 {
            label.text = "Segment Three"
        }
        if segmentedControl.selectedSegmentIndex == 3 {
            label.text = "Segment Four"
        }
    }
    
    func loadSegmentedControl(){
        if segmentedControl.selectedSegmentIndex == 0 {
            label.text = "Segment One"
        }
//        if segmentedControl.selectedSegmentIndex == 1 {
//            label.text = "Segment Two"
//        }
//        if segmentedControl.selectedSegmentIndex == 2 {
//            label.text = "Segment Three"
//        }
//        if segmentedControl.selectedSegmentIndex == 3 {
//            label.text = "Segment Four"
//        }
    }
}

