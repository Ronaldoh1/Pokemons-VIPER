//
//  ListViewNavigationHandler.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit


class ListNavigationHandler: NSObject {

    var pokemonsPresenter: PokemonsPresenter?

    func presentListViewController(in window: UIWindow) {
        let viewController = ListViewController()
        viewController.presenter = pokemonsPresenter
        window.rootViewController = UINavigationController(rootViewController: viewController)
    }
}
