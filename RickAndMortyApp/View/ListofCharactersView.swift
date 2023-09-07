//
//  ListofCharactersView.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 07/09/2023.
//

import SwiftUI

struct ListofCharactersView: View {
    @State var characters: [CharactersModel] = []
    @State private var searchTerm = ""
    
    var filteredCharacters: [CharactersModel] {
        guard !searchTerm.isEmpty else {return characters}
        return characters.filter { $0.name.localizedCaseInsensitiveContains(searchTerm)}
    }
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible()),]

    var body: some View {
        NavigationStack {
            ScrollView {
                
                LazyVGrid(columns: gridItems, spacing: 14) {
                    ForEach(filteredCharacters) { character in
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
            }.navigationTitle("Characters")
                .searchable(text: $searchTerm, prompt: "Search a character")
        }
        
    }
}

struct ListofCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ListofCharactersView()
    }
}
