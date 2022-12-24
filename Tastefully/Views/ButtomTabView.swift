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
    }
    var body: some View {
        
        
            TabView {
                    HomeScreenView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                RecipeDetailsView(viewModel: RecipesViewModel())
                    .tabItem {
                        Image(systemName: "square.and.arrow.down.fill")
                        Text("Saved")
                    }
                
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
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
