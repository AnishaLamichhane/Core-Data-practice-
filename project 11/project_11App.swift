//
//  project_11App.swift
//  project 11
//
//  Created by Anisha Lamichhane on 6/1/21.
//

import SwiftUI

@main
struct project_11App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
