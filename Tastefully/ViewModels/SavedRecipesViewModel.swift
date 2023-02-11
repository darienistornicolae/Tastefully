//
//  SavedRecipesViewModel.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 31.01.2023.
//

import Foundation

class SavedRecipesViewModel: ObservableObject {
    
    @Published var savedIds = Set<Int>()
    
    init() {}
    
    func onAppear() {
        self.savedIds = Database.shared.savedRecipeId
    }

    
}
