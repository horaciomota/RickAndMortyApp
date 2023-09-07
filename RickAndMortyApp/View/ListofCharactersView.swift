//
//  ListofCharactersView.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 07/09/2023.
//

import SwiftUI

struct ListofCharactersView: View {
    @State var characters: [CharactersModel] = []
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible()),]

    var body: some View {
        NavigationView {
            ScrollView {
                
                LazyVGrid (columns: gridItems, spacing: 14) {
                    ForEach(characters) { character in
                        characterCellView(character: character)
        
                    }
                }
                .task {
                        do {
                            characters = try await fetchCharacter()
                        }catch {
                            print("Erro ao obter dados: \(error)")
                        }
                    }
            .navigationTitle("Characters")
            }
        }
        
    }
}

struct ListofCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ListofCharactersView()
    }
}
