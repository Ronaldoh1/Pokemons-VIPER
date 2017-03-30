//
//  DetailsContract.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/14/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

protocol PokemonDetailViewProtocol: class {

    var presenter: PokemonDetailPresenterProtocol? { get set }

    func showDetails(for pokemon: Pokemon)

}

protocol PokemonDetailPresenterProtocol: class {
    
    weak var view: PokemonDetailViewProtocol? { get set }
    var router: PokemonDetailRouterProtocol? { get set }
    var pokemon: Pokemon? { get set }
    
    func viewDidLoad()
    
}

protocol PokemonDetailRouterProtocol: class {

    static func createPokemonDetailModule(for pokemon: Pokemon) -> UIViewController
    
}
