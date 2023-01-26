//
//  RecipeCardView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 14.12.2022.
//

import SwiftUI

struct RecipeCardView: View {
    
    var listings: [String] = ["malbec", "pinot noir", "rosu negru"]
    
    
    var body: some View {
        VStack() {
            HStack() {
                AsyncImage(url: URL(string: "viewModel.recipeImage"))
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .cornerRadius(20)
                Spacer()
                
                HStack {
                    VStack(alignment: .leading, spacing: 40) {
                        Text("viewModel.recipeTitle")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        //                            HStack {
                        //                                ForEach(viewModel.paierdWine, id: \.self) { wine in
                        //                                    Text(wine)
                        //                                        .fontWeight(.bold)
                        //                                        .font(.caption)
                        //                                }
                        //                            }
                        
                    }
                    Spacer()
                }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.baseColor)
                .frame(width: 360, height: 150)
                .shadow(color: Color.blue, radius: 20)
            
        )
        .frame(width: 360, height: 150)
        
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView()
            .previewLayout(.sizeThatFits)
    }
}
