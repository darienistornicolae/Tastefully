//
//  SavedRecipesView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 31.01.2023.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published var items: [String]
    
    init() {
        self.items = []
    }
}
    

struct SavedRecipesView: View {
  //  @StateObject var viewModel = SavedRecipesViewModel()
    //chatGPT - metoda data de GPT merge, dar numa text, l-am rugat sa-mi arate in view si a dat crash GPT-ul :))
    @EnvironmentObject var favorites: Favorites
    
    
    // TODO: Show saved recipes
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.backgroundColor.ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        Text("Favourites Recipes")
                            .padding(.top, 23)
                            .padding(.trailing, 100)
                            .font(.title)
                            .fontWeight(.bold)
                        
                      
                        ForEach(favorites.items, id: \.self) { recipe in
                            Text(recipe)
                        }
                        
                        Spacer()
                    }
                }
                .navigationTitle("Tastefully")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.baseColor, for: .automatic)
                .toolbarBackground(.visible, for: .automatic)
                .multilineTextAlignment(.trailing)
                
                
            }
            
        }
    }
}

struct SavedRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        SavedRecipesView()
    }
}
