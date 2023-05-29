//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Rodrigo Filomeno on 28/05/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
