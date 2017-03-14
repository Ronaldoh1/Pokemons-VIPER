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

    var listNavigationHandler = ListNavigationHandler()

    init() {
        configureDependencies()
    }

    func installRootViewController(in window: UIWindow) {
       listNavigationHandler.presentListViewController(in: window)
    }

    func configureDependencies() {
        let pokemonsPresenter = PokemonsPresenter()
        let pokemonsInteractor = PokemonsInteractor()

        pokemonsPresenter.interactor = pokemonsInteractor
        listNavigationHandler.pokemonsPresenter = pokemonsPresenter
    }
}
