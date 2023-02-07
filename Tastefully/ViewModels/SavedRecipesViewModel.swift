//
//  SavedRecipesViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 31.01.2023.
//

import Foundation

class SavedRecipesViewModel: ObservableObject {
    //Aici ii totul de la tutorial
    @Published var recipes = [RecipeModel]()
    @Published var showingFavs = false
    @Published var savedRecipe: Set<String> = ["sss","fff "]
    var filteredRecipes: [RecipeModel] {
        if showingFavs {
            return recipes.filter { savedRecipe.contains($0.title)}
        } else {
            return recipes
        }
    }
    
    private var dataBase = Database()
    
    init() {
        self.savedRecipe = dataBase.load()
        self.recipes = [RecipeModel.mock1(), RecipeModel.mock2()]
    }
    
    func contains(_ item: RecipeModel) -> Bool {
        savedRecipe.contains(item.title)
    }
    
    func toggleFav(item: RecipeModel) {
        if contains(item) {
            savedRecipe.remove(item.title)
        } else {
            savedRecipe.insert(item.title)
        }
        dataBase.save(item: savedRecipe)
    }
    
}
