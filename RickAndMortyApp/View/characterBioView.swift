//
//  characterBioView.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 07/09/2023.
//

import SwiftUI

struct characterBioView: View {
    
    let character: CharactersModel

    var body: some View {
        
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: character.image)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: .infinity, height: 400)
                            .ignoresSafeArea()
                            
                    } else {
                        Rectangle()
                            .frame(width: .infinity, height: 400)
                            .cornerRadius(20)
                    }
                }
                Spacer()

                
                Text(character.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
            }

        }
        
        
        
    }
}

struct characterBioView_Previews: PreviewProvider {
    static var previews: some View {
        characterBioView(character: CharactersModel(id: 1, name: "Rick sanchez", gender: "Male", species: "Human", status: "Alive", image: "xxxx"))
    }
}
