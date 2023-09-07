//
//  ListofCharactersView.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 07/09/2023.
//

import SwiftUI

struct ListofCharactersView: View {
    @State private var characters: [CharactersModel] = []

    var body: some View {
        NavigationView {
            LazyVStack {
                
                ForEach(characters) { character in
                    /*@START_MENU_TOKEN@*/Text(character.name)/*@END_MENU_TOKEN@*/
                }
                
            }.navigationTitle("Characters")
        }
        
    }
}

struct ListofCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ListofCharactersView()
    }
}
