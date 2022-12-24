//
//  FloatingBar.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 15.12.2022.
//

import SwiftUI

struct FloatingBar: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            
            GeometryReader { _ in
                Text("")
            }.background(Color.backgroundColor.edgesIgnoringSafeArea(.all))
            FloatingTabBar()
        }
    }
}

struct FloatingBar_Previews: PreviewProvider {
    static var previews: some View {
        FloatingBar()
    }
}


struct FloatingTabBar: View {
    var body: some View {
        HStack{
            
            NavigationLink {
                HomeScreenView()
            } label: {
                Image(systemName: "house.fill").foregroundColor(.white)
            }
            Spacer(minLength: 10)
            
            NavigationLink {
                RecipeDetailsView(viewModel: RecipesViewModel())
            } label: {
                Image(systemName: "square.and.arrow.down.fill").foregroundColor(.white)
            }
            Spacer(minLength: 10)
            
            NavigationLink {
                ProfileView()
            } label: {
                Image(systemName: "person.fill").foregroundColor(.white)
            }

        }   .padding(.vertical, 25)
            .padding(.horizontal, 35)
            .background(Color.baseColor)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(width: 300, height: 150)
    }
    
}
