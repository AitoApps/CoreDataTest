//
//  ViewController.swift
//  CoreDataApp
//
//  Created by tixboubou on 8/12/16.
//  Copyright © 2016 tixboubou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var txtLatitude: UITextField!
    @IBOutlet weak var txtLongitude: UITextField!
    
    @IBOutlet weak var storeImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func saveAction(sender: AnyObject) {
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

