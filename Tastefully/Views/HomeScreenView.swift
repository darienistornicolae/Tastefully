//
//  HomeScreenView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 13.12.2022.
//

import SwiftUI

struct HomeScreenView: View {
    
    @StateObject var viewModel = RecipesViewModel()
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
            Color.backgroundColor.ignoresSafeArea(.all)
            ScrollView {
                    VStack {
                        Text("Recipes")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 30)
                            .padding(.trailing, 250)
                       
//                     ForEach(RecipeCardView(viewModel: RecipesViewModel()), id: \.self) { recipe in
//                            recipe
//                        }
                        RecipeCardView(viewModel: RecipesViewModel())
                        Spacer()
                    }
                }
                .navigationTitle("Tastefully")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.baseColor, for: .automatic)
                .multilineTextAlignment(.trailing)
                
            }
            
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


fileprivate extension HomeScreenView {
    var recipeContainer: some View {
        Text("Sad")
        
    }
}

