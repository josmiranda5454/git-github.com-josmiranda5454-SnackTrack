//
//  Item+CoreDataProperties.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/8/22.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var expirationDate: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var itemDescription: String?
    @NSManaged public var name: String?
    @NSManaged public var type: Int16
    @NSManaged public var quantity: Int32
    
    var wrappedName: String {
        name ?? "Unknown"
    }
    
    var wrappedItemDescription: String {
        itemDescription ?? ""
    }

}

extension Item : Identifiable {

}
