//
//  ProfileView.swift
//  Tastefully
//
//  Created by Darie-Nistor Nicolae on 15.12.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.backgroundColor.ignoresSafeArea(.all)
                
                ScrollView {
                    
                    Image("profile")
                        .resizable()
                       // .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        //.cornerRadius(100)
                        .clipShape(Circle())
                        .padding(.top, 40)
                    
                    HStack {
                        Text("Hello, Darie!")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    HStack {
                        Text("Personal Details")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.leading, 25)
                        Spacer()
                        
                    }
                    .padding(.top, 40)
                    
                        RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.baseColor)
                        .frame(width: 350, height: 1)
                        .padding(.bottom)
                    
                    
                    HStack {
                        profileCardDetails
                    }.padding(.top, 25)
                    
                    
                    
                        
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

fileprivate extension ProfileView {
    var profileCardDetails: some View {
        VStack() {
            HStack() {
                Spacer()
                
                HStack {
                    VStack(alignment: .leading, spacing: 35) {
                            Text("Name: ")
                            .fontWeight(.bold)
                            .font(.title2)
                            
                            Text("Email: ")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                            Text("Password: ")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                            Text("Birthdate: ")
                            .fontWeight(.bold)
                            .font(.title2)
                    }
                    Spacer()
                }
            }
        }
        
        .frame(width: 360, height: 200)
    }
    
}
