//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 28/05/23.
//

import Foundation

/// Model que representa o status (Status) de um personagem (Character)
enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
