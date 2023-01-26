//
//  RecipeDetailsViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 25.01.2023.
//

import Foundation
import Combine

class RecipeDetailsViewModel: ObservableObject {
    
    // MARK: Properties
    var cancellables = Set<AnyCancellable>()
    @Published var recipeTitle: String = ""
    @Published var recipeImage: String = ""
    @Published var recipeDescription: String = ""
    @Published var summary: String = ""
    
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
    
    init() {
       // printRecipeDescription()
    }
    
    func printRecipeDescription() {
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
        
        apiService.$recipeSummarized
            .map { description in
                var recipeSummary = description.summary
                return recipeSummary
            }
            .sink { [weak self] newString in
                self?.recipeDescription = newString
            }
            .store(in: &cancellables)
        
        apiService.$recipeSummarized
            .map { summary in
                return summary.summary
            }
            .sink { [weak self] summary in
                self?.summary = summary
            }
            .store(in: &cancellables)
    }
}
