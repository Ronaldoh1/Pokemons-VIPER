//
//  ApplicationDependencies.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Foundation
import UIKit

class ApplicationDependencies {

    var listNavigationHandler = PokemonListRouter()

    init() {
        configureDependencies()
    }

    func installRootViewController(in window: UIWindow) {
       listNavigationHandler.presentListViewController(in: window)
    }

    private func configureDependencies() {
        let pokemonsPresenter = PokemonListPresenter()
        let pokemonsInteractor = PokemonListInteractor()

        pokemonsPresenter.interactor = pokemonsInteractor
        listNavigationHandler.pokemonsPresenter = pokemonsPresenter
    }
    
}
