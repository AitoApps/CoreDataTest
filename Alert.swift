//
//  Alert.swift
//  CoreDataApp
//
//  Created by tixboubou on 8/13/16.
//  Copyright © 2016 tixboubou. All rights reserved.
//


import UIKit

class Alert: NSObject {
    
    static func show(title: String, message: String, vc: UIViewController){
        
        // Create The Controller
        
        let alertCT = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        // Create Alert Action
        
        let okAc = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (alert: UIAlertAction) -> Void in
            alertCT.dismissViewControllerAnimated(true, completion: nil)
        }
        
        // Add Alert Action to Alert Controller
        
        alertCT.addAction(okAc)
        
        // Display Alert Controller
        
        vc.presentViewController(alertCT, animated: true, completion: nil)
        
        
    }
}
