//
//  RecipesViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 16.12.2022.
//

import Foundation
import Combine

class RecipesViewModel: ObservableObject {
    
    // MARK: Properties
    var cancellables = Set<AnyCancellable>()
    @Published var recipeTitle: String = ""
    @Published var recipeImage: String = ""
    @Published var paierdWine: [String] = [""]
    
    let apiService = APICall(recipes: SearchRecipeByIngredientsModelElement(
        id: 0,
        image: "",
        imageType: "", likes: 0, missedIngredientCount: 0,
        missedIngredients: [SedIngredient](), title: "",
        unusedIngredients: [SedIngredient](), usedIngredientCount: 0,
        usedIngredients: [SedIngredient]()),
                             recipeDetails: RecipeDetailsModel(
                                id: 0, title: "", image: "", readyInMinutes: 0, healthScore: 0, glutenFree: false, instructions: "", vegetarian: false, veryHealthy: false, dishTypes: [""], extendedIngredients: [ExtendedIngredient](), summary: "", winePairing: WinePairing(pairedWines: [""], pairingText: "")),
                             recipeSummarized: SummarizedRecipeModel(id: 0, summary: "", title: ""))
    
    @Published var isSearching: Bool = false
    
    init() {
        
    }

    
    func setupRecipes() {
        apiService.$recipes
            .map { title in
                var mealTitle = title.first?.title
                return mealTitle!
            }
            .sink { [weak self] newString in
                self?.recipeTitle = newString
            }
            .store(in: &cancellables)
        
        apiService.$recipes
            .map { image in
                var dishImage = image.first?.image
                return dishImage!
            }
            .sink { [weak self] newString in
                self?.recipeImage = newString
            }
            .store(in: &cancellables)
        
        apiService.$recipeDetails
            .map { wine in 
                return wine.winePairing.pairedWines
            }
            .sink { [weak self] wine in
                self?.paierdWine = wine
            }
            .store(in: &cancellables)  
        }
    
    }
    
   
