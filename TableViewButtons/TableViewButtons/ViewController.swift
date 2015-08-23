//
//  ViewController.swift
//  TableViewButtons
//
//  Created by Manuel Cespedes on 8/23/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import UIKit

// add protocols
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add objects to array
        self.objects.addObject("iPhone")
        self.objects.addObject("Apple Watch")
        self.objects.addObject("Mac")
        
        // reload table view
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Table View Methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.titleLabel.text = self.objects.objectAtIndex(indexPath.row) as? String
        
        // the tag will be used to know which button is being called
        cell.shareButton.tag = indexPath.row
        // the button will target an action
        cell.shareButton.addTarget(self, action: "logAction:", forControlEvents: .TouchUpInside)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    @IBAction func logAction(sender: UIButton) {
        
        // use the tag created in second tableView function to get the correct value
        let titleString = self.objects[sender.tag] as? String
        
        //
        let firstActivityItem = "\(titleString!)"
        
        // activity controller for sharing
        let activityViewController : UIActivityViewController = UIActivityViewController(activityItems: [firstActivityItem], applicationActivities: nil)
        
        self.presentViewController(activityViewController, animated: true, completion: nil)
    }
    
    // to pass the title to the NewViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "showView") {
            
            
            // create a NewViewController object based on which ViewController is being pushed by the segue
            var upcoming: NewViewController = segue.destinationViewController as! NewViewController
            
            // get the indexPath of the selected row in the tableView
            let indexPath = self.tableView.indexPathForSelectedRow()!
            
            // get the object of the array based on that selected row
            let titleString = self.objects.objectAtIndex(indexPath.row) as? String
            
            // set the object from the array to the titleString, the var created in the NewViewController
            upcoming.titleString = titleString
            
            // deselect the row
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
            
        }
    }
    
}
































