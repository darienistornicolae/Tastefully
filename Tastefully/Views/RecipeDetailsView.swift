//
//  RecipeDetailsView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 15.12.2022.
//

import SwiftUI

struct RecipeDetailsView: View {
    
 @StateObject var viewModel: RecipesViewModel
    init(viewModel: RecipesViewModel) {
        self._viewModel = StateObject(wrappedValue: RecipesViewModel())
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.backgroundColor.ignoresSafeArea(.all)
                ScrollView {
                    VStack{
                        AsyncImage(url: URL(string: viewModel.recipeImage))
                            .scaledToFill()
                            .cornerRadius(10)
                            .padding(.top)
                            
                        
                            Text(viewModel.recipeTitle)
                                .font(.title2)
                                .fontWeight(.bold)
                        
                        HStack {
                            Text("viewModel.recipeDescriptionviewModel")
                                .multilineTextAlignment(.leading)
                                .padding(.top)
                                
    
                        }
                            Text("Ingredients used")
                                .padding(.top)
                        
                        
                    }
                }
                .navigationTitle("Tastefully")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.orange, for: .automatic)
                .toolbarBackground(.visible, for: .automatic)
                .multilineTextAlignment(.trailing)
                
            }
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(viewModel: RecipesViewModel())
    }
}