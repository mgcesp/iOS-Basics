//
//  ViewController.swift
//  ColorFilters
//
//  Created by Manuel Cespedes on 10/13/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var red: Float = 0
    var blue: Float = 0
    var green: Float = 0
    var alphaPower: CGFloat = 0.7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getColors()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderRedAction(sender: AnyObject) {
        getColors()
    }
    
    @IBAction func sliderBlueAction(sender: AnyObject) {
        getColors()
    }
    
    @IBAction func sliderGreenAction(sender: AnyObject) {
        getColors()
    }
    
    func getColors() {
        red = redSlider.value
        blue = blueSlider.value
        green = greenSlider.value
        
        printLabels()
        changeLabelColor()
    }
    
    func printLabels() {
        
        let fRedColor = String(format: "%0.0f", (red * 255))
        let fGreenColor = String(format: "%0.0f", (green * 255))
        let fBlueColor = String(format: "%0.0f", (blue * 255))
        
        redLabel.text = "Red: \(fRedColor)"
        blueLabel.text = "Blue: \(fBlueColor)"
        greenLabel.text = "Green: \(fGreenColor)"
    }
    
    func changeLabelColor() {
        
        let colorChange = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: alphaPower)
        
        colorLabel.backgroundColor = colorChange
        
        self.view.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    }
}

