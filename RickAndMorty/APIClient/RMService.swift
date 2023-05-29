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
    private init(){}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedTogetData
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
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(RMServiceError.failedTogetData))
                return
            }
            // Decode response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    //MARK: -Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
