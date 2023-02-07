//
//  Database.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 05.02.2023.
//

import Foundation
//de la tutorial
//am testat cu datele de acolo, sa vad daca chiar merge la mine cu text, dupa aceea modificam la view.
final class Database {
    private let FAV_KEY = "fav_key"
    
    func save(item: Set<String>) {
        let array = Array(item)
        UserDefaults.standard.set(array, forKey: FAV_KEY )
    }
    
    func load() -> Set<String> {
        let array = UserDefaults.standard.array(forKey: FAV_KEY) as? [String] ?? [String]()
        return Set(array)
    }
}
