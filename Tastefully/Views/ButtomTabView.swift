//
//  ButtomTabView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 19.12.2022.
//

import SwiftUI


struct ButtomTabView: View {
    init()
    {
        UITabBar.appearance().backgroundColor = UIColor.init(Color.orange)
        UITabBar.appearance().barTintColor = UIColor.init(Color.orange)
        UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
        
    }
    var body: some View {
        
        
        TabView {
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            SavedRecipesView()
                .tabItem {
                    Image(systemName: "square.and.arrow.down.fill")
                    Text("Saved")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
        .tint(.white)
    }
}

struct ButtomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ButtomTabView()
    }
}
