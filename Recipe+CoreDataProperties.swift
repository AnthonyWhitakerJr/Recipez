//
//  Recipe+CoreDataProperties.swift
//  Recipez
//
//  Created by Anthony Whitaker on 7/31/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipe {

    @NSManaged var image: Data?
    @NSManaged var ingredients: String?
    @NSManaged var steps: String?
    @NSManaged var title: String?

}
