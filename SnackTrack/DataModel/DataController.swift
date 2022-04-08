//
//  DataController.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/7/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    // This refers to the xcdatamodeld Bookworm <----------
    // Prepares CoreData to load the model
    let container = NSPersistentContainer(name: "SnackTrackDataModel")
    
    init() {
        // Load the stores
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load data: \(error.localizedDescription)")
            }
        }
    }
}
