//
//  CharactersModel.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 06/09/2023.
//

import Foundation

struct CharactersResponse: Codable, Identifiable {
    let results: [CharactersModel]
}

struct CharactersModel: Codable, Identifiable {
    var id: Int
    var name: String
    var gender: String
}



