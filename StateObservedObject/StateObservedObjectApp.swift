//
//  StateObservedObjectApp.swift
//  StateObservedObject
//
//  Created by Abduqaxxor on 2/4/22.
//

import SwiftUI

@main
struct StateObservedObjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           MainScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
