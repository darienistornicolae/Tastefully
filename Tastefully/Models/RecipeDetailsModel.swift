//
//  RecipeDetailsModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 17.12.2022.
//

import Foundation

struct RecipeDetailsModel: Codable, Identifiable, Hashable {
    let id: Int
    let title: String
    let image: String
    let readyInMinutes: Int
    let healthScore: Int
    let glutenFree: Bool
    let instructions: String
    let vegetarian, veryHealthy: Bool
    let dishTypes: [String]
    let extendedIngredients: [ExtendedIngredient]
    let summary: String
    let winePairing: WinePairing
    
    
    static func mockDetails1() -> RecipeDetailsModel {
        RecipeDetailsModel(id: 2, title: "Tomatoes", image: "", readyInMinutes: 6, healthScore: 9, glutenFree: true, instructions: "", vegetarian: true, veryHealthy: true, dishTypes: [""], extendedIngredients: [ExtendedIngredient(amount: 33, id: 0, image: "", name: "", original: "", originalName: "", unit: "")], summary: "ddsasdasdd", winePairing: WinePairing(pairedWines: [""], pairingText: ""))
    }
    
    static func mockDetails2() -> RecipeDetailsModel {
        RecipeDetailsModel(id: 4, title: "Potatoes", image: "", readyInMinutes: 2, healthScore: 92, glutenFree: false, instructions: "", vegetarian: false, veryHealthy: true, dishTypes: [""], extendedIngredients: [ExtendedIngredient(amount: 22, id: 0, image: "", name: "", original: "", originalName: "", unit: "")], summary: "lorem ipsum", winePairing: WinePairing(pairedWines: [""], pairingText: ""))
    }
}

// MARK: - ExtendedIngredient
struct ExtendedIngredient: Codable, Hashable {
    let amount: Double
    //    let consitency: Consitency
    let id: Int
    let image: String
   // let measures: Measures
    let name, original, originalName, unit: String
}

//enum Consitency: String, Codable, Hashable {
//    case liquid = "liquid"
//    case solid = "solid"
//}

// MARK: - Measures
//struct Measures: Codable, Hashable {
//    let metric, us: Metric
//}

// MARK: - Metric
struct Metric: Codable, Hashable {
    let amount: Double
    let unitLong, unitShort: String
}

// MARK: - WinePairing
struct WinePairing: Codable, Hashable {
    let pairedWines: [String]
    let pairingText: String
}

