//
//  RecipeDetailsViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 28.01.2023.
//

import Foundation

class RecipeDetailsViewModel: ObservableObject {
    @Published var recipesDetails: RecipeDetailsModel
    
    
    init() {
        self.recipesDetails = .mockDetails1()      
    }
}
