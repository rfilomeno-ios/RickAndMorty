//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 28/05/23.
//

import Foundation

/// Model que representa o sexo (Gender) de um personagem (Character)
enum RMCharacterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
