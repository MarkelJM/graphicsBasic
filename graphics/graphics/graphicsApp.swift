//
//  graphicsApp.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import SwiftUI

@main
struct graphicsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RandomNumberView()
            
            /*
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
             */
        }
    }
}
