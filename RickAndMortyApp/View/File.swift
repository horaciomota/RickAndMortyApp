////
////  File.swift
////  RickAndMortyApp
////
////  Created by Horacio Mota on 06/09/2023.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var characters: [CharactersModel] = []
//
//    var body: some View {
//        NavigationView {
//            List(characters, id: \.id) { character in
//                Text(character.name)
//            }
//            .onAppear {
//                Task {
//                    do {
//                        characters = try await fetchCharacters()
//                    } catch {
//                        print("Error fetching data: \(error)")
//                    }
//                }
//            }
//            .navigationBarTitle("Character List")
//        }
//    }
//
//    struct CharactersResponse: Decodable {
//        let results: [CharactersModel]
//    }
//    struct RickAndMoreResults:Codable {
//        var results: CharactersModel
//    }
//
//    struct CharactersModel: Codable {
//        var id: Int
//        var name: String
//    }
//
//
//    func fetchCharacters() async throws -> [CharactersModel] {
//        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
//            throw URLError(.badURL)
//        }
//
//        let (data, _) = try await URLSession.shared.data(from: url)
//        let charactersResponse = try JSONDecoder().decode(CharactersResponse.self, from: data)
//        return charactersResponse.results
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
