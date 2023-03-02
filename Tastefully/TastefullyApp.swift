//
//  TastefullyApp.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 13.12.2022.
//

import SwiftUI

@main
struct TastefullyApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ButtomTabView()
                .preferredColorScheme(.dark)
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
