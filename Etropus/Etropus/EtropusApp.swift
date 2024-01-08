//
//  EtropusApp.swift
//  Etropus
//
//  Created by David Oliveira on 07/01/24.
//

import SwiftUI

@main
struct EtropusApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            EtropusListView(etropusData: EtropusData())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
