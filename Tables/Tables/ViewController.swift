//
//  ViewController.swift
//  Tables
//
//  Created by Manuel Cespedes on 8/27/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var cellContent = ["Manuel", "Pepito", "Gustavo", "Rosario", "Claudia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    // Defines the content of each individual cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        // indexPath.row returns an INT representing the location of the cell (0, 1, 2, ...)
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }
    
    // OUTLETS
    // dataSource : ViewController provides the source data
    // dataDelegate : ViewController controls this table

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

