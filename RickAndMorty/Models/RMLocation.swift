//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 21/05/23.
//

import Foundation

/// Model que representa uma localização (Location)
struct RMLocation: Codable {
    
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
