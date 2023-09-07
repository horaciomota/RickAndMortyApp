

import SwiftUI


func fetchCharacter() async throws -> [CharactersModel] {
    
    guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
        print("Something wrong with URL")
        throw URLError(.badURL)
    }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    let characterDataResponse = try JSONDecoder().decode(CharactersResponse.self, from: data)
    print("Api conected.")
    return characterDataResponse.results
    
}
