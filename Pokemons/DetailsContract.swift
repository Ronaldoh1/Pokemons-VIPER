//
//  DetailsContract.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/14/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

protocol DetailView: class {

    var presenter: DetailsPresentation! { get set }

    func showDetails(for pokemon: Pokemon)

}

protocol DetailsPresentation: class {
    weak var view: DetailView? { get set }

    func viewDidLoad()
}

protocol DetailsWireFrame: class {

    static func assembleModule(_ pokemon: Pokemon) -> UIViewController
    
}
