//
//  RMService.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 25/05/23.
//

import Foundation


/// Principal objeto do serviço da API para buscar dados do Rick and Morty
final class RMService {
    
    /// Instância compartilhada (singleton)
    static let shared = RMService()
    
    /// Construtor privado para que esse objeto seja somente inicializado pelo singleton compartilhado
    private init(){
        
    }
    
    /// Enviar chamada a API do Rick and Morty
    /// - Parameters:
    ///   - request: instância da chamada
    ///   - type: Tipo do objeto que esperamos receber
    ///   - completion: Resposta (callback) com os dados ou erros
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ){
            
    }
}
