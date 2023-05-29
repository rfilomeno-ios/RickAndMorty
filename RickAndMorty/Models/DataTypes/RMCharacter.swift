//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 21/05/23.
//

import Foundation

/// Model que representa um personagem (Character)
struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

