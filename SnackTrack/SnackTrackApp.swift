//
//  SnackTrackApp.swift
//  SnackTrack
//
//  Created by Jose Miranda on 4/6/22.
//

import SwiftUI

@main
struct SnackTrackApp: App {
    @State private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
