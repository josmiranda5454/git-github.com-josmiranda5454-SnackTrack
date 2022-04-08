//
//  Item+CoreDataProperties.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/7/22.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var expirationDate: Date?
    @NSManaged public var itemDescription: String?
    @NSManaged public var type: Int16
    
    var wrappedName: String {
        name ?? "Unknown Item"
    }
    
    var wrappedItemDescription: String {
        itemDescription ?? ""
    }
    
    var wrappedDate: Date {
        expirationDate ?? Date.now
    }
    
}

extension Item : Identifiable {

}
