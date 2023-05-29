//
//  RMSingleLocation.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 28/05/23.
//

import Foundation

/// Model que representa uma localização (SingleLocation) referente a um personagem (Character)
struct RMSingleLocation: Codable {
  let name: String
  let url: String
}
