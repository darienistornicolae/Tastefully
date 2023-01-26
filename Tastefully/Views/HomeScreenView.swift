//
//  HomeScreenView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 13.12.2022.
//

import SwiftUI

struct HomeScreenView: View {
    @StateObject var viewModel = HomeScreenViewModel()
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.backgroundColor.ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        
                        ForEach(viewModel.recipes, id: \.self) { recipe in
                            RecipeCardView(recipe: recipe)
                        }
                        
                        Spacer()
                    }
                }
                .navigationTitle("Tastefully")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.baseColor, for: .automatic)
                .multilineTextAlignment(.trailing)
                
            }
            
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


fileprivate extension HomeScreenView {
    var recipeContainer: some View {
        Text("Sad")
        
    }
}

