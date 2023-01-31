//
//  RecipeDetailsView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 15.12.2022.
//

import SwiftUI

struct RecipeDetailsView: View {
    
    @StateObject var viewModel = RecipeDetailsViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.backgroundColor.ignoresSafeArea(.all)
                ScrollView {
                    VStack{
                        AsyncImage(url: URL(string: viewModel.recipesDetails.image))
                            .scaledToFill()
                            .cornerRadius(10)
                            .padding(.top)
                        
                        
                        Text(viewModel.recipesDetails.title)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        HStack {
                            Text(viewModel.recipesDetails.summary)
                                .multilineTextAlignment(.leading)
                                .padding(.top)
                            
                            
                        }
                        Text(viewModel.recipesDetails.extendedIngredients.description)
                            .padding(.top)
                        
                        
                    }
                }
                
                
                
            }
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView()
    }
}
