//
//  Stores+CoreDataProperties.swift
//  CoreDataApp
//
//  Created by tixboubou on 8/12/16.
//  Copyright © 2016 tixboubou. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Stores {

    @NSManaged var storeName: String?
    @NSManaged var storeDescription: String?
    @NSManaged var storeLatitude: String?
    @NSManaged var storelongitude: String?
    @NSManaged var storeImage: NSData?

}
