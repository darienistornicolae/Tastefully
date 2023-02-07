//
//  TastefullyApp.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 13.12.2022.
//

import SwiftUI

@main
struct TastefullyApp: App {
    //chatGPT
    let fav = Favorites()
    var body: some Scene {
        WindowGroup {
            ButtomTabView().environmentObject(fav)
                .preferredColorScheme(.dark)
        }
    }
}
