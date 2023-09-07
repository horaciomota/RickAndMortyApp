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
        Text(character.name)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.blue)    }
}

struct characterBioView_Previews: PreviewProvider {
    static var previews: some View {
        characterBioView(character: CharactersModel(id: 1, name: "Rick sanchez", gender: "Male", species: "Human", status: "Alive", image: "xxxx"))
    }
}
