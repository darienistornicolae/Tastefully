//
//  SummarizedRecipe.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 24.12.2022.
//

import Foundation

struct SummarizedRecipeModel: Codable, Identifiable, Hashable {
    let id: Int
    let summary, title: String
    
}
