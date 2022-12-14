//
//  SearchRecipeByIngredientsModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 14.12.2022.
//

import Foundation

// MARK: - SearchRecipeByIngredientsModelElement
struct SearchRecipeByIngredientsModelElement: Codable {
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
struct SedIngredient: Codable {
    let aisle: String
    let amount: Double
    let id: Int
    let image: String
    let meta: [String]
    let name, original, originalName, unit: String
    let unitLong, unitShort: String
    let extendedName: String?
}

typealias SearchRecipeByIngredientsModel = [SearchRecipeByIngredientsModelElement]
