//
//  ListViewNavigationHandler.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit


class PokemonListRouter: PokemonListRouterProtocol {
    
    weak var viewController: UIViewController?
    var pokemonsPresenter: PokemonListPresenter?
    
    func presentListViewController(in window: UIWindow) {
        let viewController = ListViewController()
        let presenter = PokemonListPresenter()
        let interactor: PokemonListInteractorInputProtocol & PokemonListRemoteDataManagerOutputProtocol = PokemonListInteractor()
        let remoteDataManager: PokemonListRemoteDataManagerInputProtocol = PokemonListRemoteDataManager()
        let router: PokemonListRouterProtocol = PokemonListRouter()
        viewController.presenter = pokemonsPresenter
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.remoteDataManager = remoteDataManager
        remoteDataManager.output = interactor
        
        window.rootViewController = UINavigationController(rootViewController: viewController)
    }
    
    func presentPokemonDetailsScreen(from view: PokemonListViewProtocol, for pokemon: Pokemon) {
        let pokemonDetailViewController = PokemonDetailRouter.createPokemonDetailModule(for: pokemon)
        
        guard let view = view as? UIViewController else {
            return
        }
        view.navigationController?.pushViewController(pokemonDetailViewController, animated: true)
    }
    
}
