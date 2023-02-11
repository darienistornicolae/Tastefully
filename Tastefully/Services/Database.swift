//
//  Database.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 05.02.2023.
//

import Foundation

class Database: ObservableObject {
    //MARK: Properties
    private let FAV_KEY = "fav_key"
    @Published var savedRecipeId: Set<Int> = []
    
    
    static let shared = Database()
    
    private init() {
        load()
    }
    
    
    func save(items: Set<Int>) {
        let array = Array(items)
        UserDefaults.standard.set(array, forKey: FAV_KEY )
    }
    
    func contains(_ recipeId: Int) -> Bool {
        savedRecipeId.contains(recipeId)
    }
    
    func toggleFav(recipeId: Int) {
        if contains(recipeId) {
            savedRecipeId.remove(recipeId)
        } else {
            savedRecipeId.insert(recipeId)
        }
        save(items: savedRecipeId)
    }
    
    private func load() {
        let array = UserDefaults.standard.value(forKey: FAV_KEY) as? Array<Int> ?? Array<Int>()
        savedRecipeId = Set(array)
    }
    
}
