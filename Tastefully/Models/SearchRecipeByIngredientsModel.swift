//
//  SearchRecipeByIngredientsModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 14.12.2022.
//

import Foundation

// MARK: - SearchRecipeByIngredientsModelElement
struct SearchRecipeByIngredientsModelElement: Codable, Hashable, Identifiable {
    let id: Int
    let image: String
    let imageType: String
    let likes, missedIngredientCount: Int
    let missedIngredients: [SedIngredient]
    let title: String
    let unusedIngredients: [SedIngredient]
    let usedIngredientCount: Int
    let usedIngredients: [SedIngredient]
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

