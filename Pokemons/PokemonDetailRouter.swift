//
//  NavigationHandler.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/14/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class PokemonDetailRouter: PokemonDetailRouterProtocol {
    
    static func createPokemonDetailModule(for pokemon: Pokemon) -> UIViewController {
        
        let view = PokemonDetailViewController()
        let presenter: PokemonDetailPresenterProtocol  = PokemonDetailPresenter()
        let router: PokemonDetailRouterProtocol = PokemonDetailRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.pokemon = pokemon
        presenter.router = router
        
        return view
    }

}
