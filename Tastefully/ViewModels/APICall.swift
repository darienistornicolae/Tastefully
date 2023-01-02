//
//  APICall.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 14.12.2022.
//

import Foundation
import Combine

class APICall: ObservableObject {
    
    //MARK: Properties
    @Published var recipeDetails: RecipeDetailsModel
    @Published var recipes: [SearchRecipeByIngredientsModelElement] = []
    @Published var recipeSummarized: SummarizedRecipeModel
    var cancellables = Set<AnyCancellable>()
    private let apiKey = "e4d7f1e3dd884f1fa575e12697f19d33"
    
    init(recipes: SearchRecipeByIngredientsModelElement, cancellables: Set<AnyCancellable> = Set<AnyCancellable>(), recipeDetails: RecipeDetailsModel, recipeSummarized: SummarizedRecipeModel) {
        self.recipeDetails = recipeDetails
        self.recipes = [recipes]
        self.cancellables = cancellables
        self.recipeSummarized = recipeSummarized
        searchRecipes(ingredients: "", number: 0)
       // getRecipeDetails()
        //getRecipeSummary(id: 657579)
    }
    
    func searchRecipes(ingredients: String, number: Int) {
    //    let searchedIngredientsTrimmingWhiteSpaces = ingredients.split(separator: " ").joined(separator: "_")
        guard let url =
                URL(string: "https://api.spoonacular.com/recipes/findByIngredients?apiKey=\(apiKey)&ingredients=tomatoes,cheese,corn&number=2") else {return}
        
        URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap(handleOutput)
            .decode(type: [SearchRecipeByIngredientsModelElement].self, decoder: JSONDecoder())
            .sink { completion in
                switch completion {
                case .finished:
                    print("Succesfull connection")
                    print(completion)
                case .failure(let error):
                    print("\(error)")
                }
            } receiveValue: { [weak self] returnedRecipes in
                self?.recipes = returnedRecipes
                print(returnedRecipes)
            }
            .store(in: &cancellables)
        print(cancellables)
        }
    
    func getRecipeDetails() {
        guard let url = URL(string: "https://api.spoonacular.com/recipes/657579/information?includeNutrition=true&\(apiKey)") else {return}
        
        URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap(handleOutput)
            .decode(type: RecipeDetailsModel.self, decoder: JSONDecoder())
            .sink { completion in
                switch completion {
                case .finished:
                    print("Succesfull connection")
                    print(completion)
                case .failure(let error):
                    print("\(error)")
                }
            } receiveValue: { [weak self] returnedRecipesDetails in
                self?.recipeDetails = returnedRecipesDetails
                print(returnedRecipesDetails)
            }
            .store(in: &cancellables)
        print(cancellables)
        }
    
    func getRecipeSummary(id: Int) {
        guard let url = URL(string: "https://api.spoonacular.com/recipes/657579/\(apiKey)&summary") else {return}
        
        URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap(handleOutput)
            .decode(type: SummarizedRecipeModel.self, decoder: JSONDecoder())
            .sink { completion in
                switch completion {
                case .finished:
                    print("Succesfull connection")
                    print(completion)
                case .failure(let error):
                    print("\(error)")
                }
            } receiveValue: { [weak self] returnedRecipesDetails in
                self?.recipeSummarized = returnedRecipesDetails
                print(returnedRecipesDetails)
            }
            .store(in: &cancellables)
        print(cancellables)
        }
    }
    
    
    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard
            let response = output.response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        
        return output.data
        
    }
    
