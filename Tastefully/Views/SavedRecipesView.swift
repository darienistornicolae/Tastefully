//
//  SavedRecipesView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 31.01.2023.
//

import SwiftUI

struct SavedRecipesView: View {
    @StateObject var viewModel = SavedRecipesViewModel()
    
    // TODO: Show saved recipes
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.backgroundColor.ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        Text("Favourites Recipes")
                            .padding(.top, 23)
                            .padding(.trailing, 100)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        ForEach(viewModel.recipes, id: \.self) { recipe in
                            RecipeCardView(recipe: recipe)
                                .padding(.top, 10)
                            
                        }
                        
                        Spacer()
                    }
                }
                .navigationTitle("Tastefully")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.baseColor, for: .automatic)
                .toolbarBackground(.visible, for: .automatic)
                .multilineTextAlignment(.trailing)
                
                
            }
            
        }
    }
}

struct SavedRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        SavedRecipesView()
    }
}
