//
//  CharactersModel.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 06/09/2023.
//

import Foundation

struct CharactersResponse: Codable {
    let results: [CharactersModel]
}

struct CharactersModel: Codable {
    var id: Int
    var name: String
    var gender: String
}

struct jsonCoinData: Codable, Hashable {
    var data: [CoinData]
}

struct CoinData: Codable, Hashable {
    var id: String
    var name: String
    var rank: String
}

func getDataCoins() async throws -> [CoinData] {
    
    guard let url = URL(string: "https://api.coincap.io/v2/assets")
    else {
        print("Something Wrong with Your URL")
        throw URLError(.badURL)
    }
    let (data, _) = try await URLSession.shared.data(from: url)
    let coinsResponse = try JSONDecoder().decode(jsonCoinData.self, from: data)
    print("Busca na API concluida")
    return coinsResponse.data
}



