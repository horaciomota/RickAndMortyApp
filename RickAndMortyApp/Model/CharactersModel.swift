//
//  CharactersModel.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 06/09/2023.
//

import Foundation

struct RickAndMoreResults:Codable {
    var results: CharactersModel
}

struct CharactersModel: Codable {
    var id: Int
    var name: String
}


