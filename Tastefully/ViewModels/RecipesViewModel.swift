//
//  RecipesViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 16.12.2022.
//

import Foundation
import Combine

class RecipesViewModel: ObservableObject {
    
    var cancellables = Set<AnyCancellable>()
    @Published var recipeTitle: String = ""
    @Published var recipeImage: String = ""
    @Published var recipeDescription: String = ""
    let apiService = APICall(recipes: SearchRecipeByIngredientsModelElement(id: 0, image: "", imageType: "", likes: 0, missedIngredientCount: 0, missedIngredients: [SedIngredient](), title: "", unusedIngredients: [SedIngredient](), usedIngredientCount: 0, usedIngredients: [SedIngredient]()), recipeDetails: RecipeDetailsModel(id: 0, title: "", image: "", imageType: "", readyInMinutes: 0, license: "", healthScore: 0, gaps: "", glutenFree: false, instructions: "", vegetarian: false, veryHealthy: false, dishTypes: [""], extendedIngredients: [ExtendedIngredient](), summary: "", winePairing: WinePairing(pairedWines: [""], pairingText: "")), recipeSummarized: SummarizedRecipeModel(id: 0, summary: "", title: ""))
    
    @Published var isSearching: Bool = false
    
    init() {
        setupRecipes()
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
        
        apiService.$recipeSummarized
            .map { description in
                var recipeDescription = description.summary
                return recipeDescription
                
            }
            .sink { [weak self] newString in
                self?.recipeDescription = newString
            }
            .store(in: &cancellables)
    }
    
   }
    
    
//    func setupRecipesSubscribers() {
//        apiService.$recipes
//            .map { trim in
//
//
//            }
//            .sink { [weak self] newString in
//            self?.recipeTitle = newString
//        }
//        .store(in: &cancellables)
//                print(cancellables)
//            }
    
    
   

    

