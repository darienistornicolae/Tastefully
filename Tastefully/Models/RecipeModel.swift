//
//  SearchRecipeByIngredientsModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 14.12.2022.
//

import Foundation

// MARK: - SearchRecipeByIngredientsModelElement
struct RecipeModel: Codable, Hashable, Identifiable {
    let id: Int
    let image: String
    let missedIngredients: [SedIngredient]
    let title: String
    let unusedIngredients: [SedIngredient]
    let usedIngredientCount: Int
    let usedIngredients: [SedIngredient]
    
    static func mock1() -> RecipeModel {
        
        RecipeModel(id: 2, image: "", missedIngredients: [SedIngredient(aisle: "", amount: 2, id: 3, image: "", meta: [""], name: "", original: "", originalName: "", unit: "", unitLong: "", unitShort: "", extendedName: "")], title: "Potatoes", unusedIngredients: [SedIngredient(aisle: "", amount: 0, id: 0, image: "", meta: [""], name: "", original: "", originalName: "", unit: "", unitLong: "", unitShort: "", extendedName: "")], usedIngredientCount: 0, usedIngredients: [SedIngredient(aisle: "", amount: 3, id: 2, image: "", meta: [""], name: "", original: "", originalName: "", unit: "", unitLong: "", unitShort: "", extendedName: "")])
        
    }
    
    static func mock2() -> RecipeModel {
        RecipeModel(id: 0, image: "", missedIngredients: [SedIngredient(aisle: "", amount: 0, id: 0, image: "", meta: [""], name: "", original: "", originalName: "", unit: "", unitLong: "", unitShort: "", extendedName: "")], title: "Tomato", unusedIngredients: [SedIngredient(aisle: "", amount: 0, id: 0, image: "", meta: [""], name: "", original: "", originalName: "", unit: "", unitLong: "", unitShort: "", extendedName: "")], usedIngredientCount: 0, usedIngredients: [SedIngredient(aisle: "", amount: 0, id: 0, image: "", meta: [""], name: "", original: "", originalName: "", unit: "", unitLong: "", unitShort: "", extendedName: "")])
    }
    
}

// MARK: - SedIngredient
struct SedIngredient: Codable, Hashable {
    let aisle: String
    let amount: Double
    let id: Int
    let image: String
    let meta: [String]
    let name, original, originalName, unit: String
    let unitLong, unitShort: String
    let extendedName: String?
    
    init(aisle: String, amount: Double, id: Int, image: String, meta: [String], name: String, original: String, originalName: String, unit: String, unitLong: String, unitShort: String, extendedName: String?) {
        self.aisle = aisle
        self.amount = amount
        self.id = id
        self.image = image
        self.meta = meta
        self.name = name
        self.original = original
        self.originalName = originalName
        self.unit = unit
        self.unitLong = unitLong
        self.unitShort = unitShort
        self.extendedName = extendedName
    }
}

