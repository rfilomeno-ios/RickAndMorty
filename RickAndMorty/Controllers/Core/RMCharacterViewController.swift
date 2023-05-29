//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 21/05/23.
//

import UIKit

/// Controller para mostrar e procurar personagens (characters)
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + "\(model.info.count)")
                print("page result count: " + "\(model.results.count)")

            case .failure(let error):
                print(String(describing: error))
            }
        }
            
    }
    

}
