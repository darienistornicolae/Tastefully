//
//  TastefullyApp.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 13.12.2022.
//

import SwiftUI

@main
struct TastefullyApp: App {
    var body: some Scene {
        WindowGroup {
            ButtomTabView()
                .preferredColorScheme(.dark)
        }
    }
}
