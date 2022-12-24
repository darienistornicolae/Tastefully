//
//  RecipeDetailsView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 15.12.2022.
//

import SwiftUI

struct RecipeDetailsView: View {
    
 @StateObject var viewModel: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.backgroundColor.ignoresSafeArea(.all)
                ScrollView {
                    VStack{
                        AsyncImage(url: URL(string: viewModel.recipeImage))
                            .scaledToFill()
                        
                        Text(viewModel.recipeTitle)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 30)
                            .padding(.trailing, 240)
                        
                        HStack {
                            Text(viewModel.recipeDescription)
                                .multilineTextAlignment(.trailing)
    
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
