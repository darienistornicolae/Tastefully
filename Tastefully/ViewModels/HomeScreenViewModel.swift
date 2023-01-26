//
//  HomeScreenViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 26.01.2023.
//

import Foundation

class HomeScreenViewModel: ObservableObject {
    @Published var recipes = [RecipeModel]()
    
    init() {
        self.recipes = [.mock1(), .mock2()]
    }
}
