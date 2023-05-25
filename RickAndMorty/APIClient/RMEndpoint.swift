//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 25/05/23.
//

import Foundation

/// Representa um endpoint único da API
@frozen enum RMEndpoint: String {
    /// Endpoint para buscar  informações do personagem(character)
    case character
    /// Endpoint para buscar  informações da localizações(location)
    case location
    /// Endpoint para buscar  informações do episódio(episode)
    case episode
}
