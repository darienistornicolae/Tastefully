//
//  RecipeDetailsViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 28.01.2023.
//

import Foundation

class RecipeDetailsViewModel: ObservableObject {
    
    @Published var recipesDetails: RecipeDetailsModel
    @Published var isRecipeFavorited: Bool = false
    
    
    init() {
        self.recipesDetails = .mockDetails1()
        loadIsFavoriteState()
    }
    
    func toggleFavoriteTapped() {
        Database.shared.toggleFav(recipeId: recipesDetails.id)
        loadIsFavoriteState()
    }
    
    private func loadIsFavoriteState() {
        isRecipeFavorited = Database.shared.contains(recipesDetails.id)
    }
}
