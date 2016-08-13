//
//  ViewController.swift
//  CoreDataApp
//
//  Created by tixboubou on 8/12/16.
//  Copyright © 2016 tixboubou. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var txtLatitude: UITextField!
    @IBOutlet weak var txtLongitude: UITextField!
    
    @IBOutlet weak var storeImage: UIImageView!
    
    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func saveAction(sender: AnyObject) {
        
        let ed = NSEntityDescription.entityForName("Stores", inManagedObjectContext: moc)
        
        let store = Stores(entity: ed!, insertIntoManagedObjectContext: moc)
        
        store.storeName = txtName.text
        store.storeDescription = txtDescription.text
        store.storeLatitude = txtLatitude.text
        store.storelongitude = txtLongitude.text
        
        let img = UIImage(named: "icon.jpg")
        let imgData = UIImageJPEGRepresentation(img!, 1)
        
        store.storeImage = imgData
        
        do{
            try moc.save()
            txtName.text = ""
            txtDescription.text = ""
            txtLatitude.text = ""
            txtLongitude.text = ""
            
            self.hideKB(self)
            
            Alert.show("Success", message: "Your Record is Saved", vc: self)
            
            
            
        }catch let error as NSError
        {
             Alert.show("Failed", message: "Your Record is NOT Saved", vc: self)
        }
        
        
        
        
        
    }
    
    @IBAction func searchAction(sender: AnyObject) {
    }

    @IBAction func hideKB(sender: AnyObject) {
        txtName.resignFirstResponder()
        txtDescription.resignFirstResponder()
        txtLatitude.resignFirstResponder()
        txtLongitude.resignFirstResponder()
    }

}

