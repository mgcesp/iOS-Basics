//
//  ViewController.swift
//  SwipeNavigation
//
//  Created by Manuel Cespedes on 10/12/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create VC0 instance
        let vc0 = ViewController0(nibName: "ViewController0", bundle: nil)
        // Add VC0 as a child of ViewController
        self.addChildViewController(vc0)
        // Add VC0's view to the scroll view
        self.scrollView.addSubview(vc0.view)
        // Move the VC0 to the ViewController
        vc0.didMoveToParentViewController(self)
        
        // VC1
        let vc1 = ViewController1(nibName: "ViewController1", bundle: nil)
        
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        
        // VC2
        let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
        
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        vc2.view.frame = frame2
        
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        
        // VC3
        let vc3 = ViewController3(nibName: "ViewController3", bundle: nil)
        
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        vc3.view.frame = frame3
        
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        // Size is the total of all views (thus x4); 
        // -66 for height b/c we want the viewcontroller to start after the navbar
        // navbar = 44 and statusbar = 22
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, self.view.frame.height - 66)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

