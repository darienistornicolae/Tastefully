//
//  DataControloller.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 18.02.2023.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "Potatoes Recipe")
    
    init() {
        container.loadPersistentStores { decription, error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}
