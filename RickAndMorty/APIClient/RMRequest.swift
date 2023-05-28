//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 25/05/23.
//

import Foundation

/// Objeto que representa uma chamada única na API
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Endpoint desejado
    private let endpoint: RMEndpoint
    
    /// Componentes do path para a API, se houver algum (caso não tenha, o padrão é [])
    private let pathComponents: Set<String>
    
    /// Argumentos de query para a API, se houver algum (caso não tenha, o padrão é [])
    private let queryParameters: [URLQueryItem]
    
    /// construção da url para a requisição na api em formato de string
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue

        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Url para a API, já construida e computada
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Método Http desejado (GET) (Visto que só vamos consumir da api)
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construtor da Requisição
    /// - Parameters:
    ///   - endpoint: Endpoint desejado
    ///   - pathComponents: Coleção de componetes do Path (não obrigatório, padrão [])
    ///   - queryParameters: Coleção de argumentos de Query (não obrigatório, padrão [])
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

