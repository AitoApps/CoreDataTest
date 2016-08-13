//
//  ListStoresTableViewController.swift
//  CoreDataApp
//
//  Created by tixboubou on 8/13/16.
//  Copyright © 2016 tixboubou. All rights reserved.
//

import UIKit
import CoreData

class ListStoresTableViewController: UITableViewController {
    
    var stores = [Stores]()
    
    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(animated: Bool) {
        let ed = NSEntityDescription.entityForName("Stores", inManagedObjectContext: moc)
        
        let req = NSFetchRequest()
        req.entity = ed
        
        do {
            
            stores = try moc.executeFetchRequest(req) as! [Stores]
            
            if stores.count > 0
            {
                self.tableView.reloadData()
                
            }else {
                Alert.show("No Data", message: "No Record is found", vc: self)
            }
            
        }catch let error as NSError
        {
            Alert.show("Failed", message: error.localizedDescription, vc: self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stores.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        // Configure the cell...
        let s = stores[indexPath.row]
        
        cell.textLabel?.text = s.storeName
        cell.detailTextLabel?.text = s.storeDescription
        cell.imageView?.image = UIImage(data: s.storeImage!)
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
