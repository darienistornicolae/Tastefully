//
//  SavedRecipesViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 31.01.2023.
//

import Foundation

class SavedRecipesViewModel: ObservableObject {
    @Published var recipes = [RecipeModel]()
    
    init() {
        self.recipes = [.mock1(), .mock2()]
    }
}
