//
//  PokemonsContract.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

protocol PokemonListViewProtocol: class {

    func showPokemons(with pokemons: Pokemons)
    func showNoContentScreen()
    func showLoading()
    func hideLoading()
    func showError()

}

protocol PokemonListRouterProtocol: class {
    
    func presentListViewController(in window: UIWindow) 
    
    //Presenter to Router
    func presentPokemonDetailsScreen(from view: PokemonListViewProtocol, for pokemon: Pokemon)
    
}

// protocol that defines the commands sent from the view to the presenter

protocol PokemonListPresenterProtocol: class {

    weak var view: PokemonListViewProtocol? { get set }

    var interactor: PokemonListInteractorInputProtocol? {get set }
    var router: PokemonListRouterProtocol? { get set }
    weak var pokemonTableView: UITableView? { get set }

    func viewDidLoad()
    func showPokemonDetail(for pokemon: Pokemon)

}

protocol PokemonListInteractorOutputProtocol: class {
    
    func didRetrievePokemons(_ pokemons: Pokemons)
    func onError()
    
}

protocol PokemonListInteractorInputProtocol: class {
    
    var presenter: PokemonListInteractorOutputProtocol? { get set }
    var remoteDataManager: PokemonListRemoteDataManagerInputProtocol? { get set }
    
    func retrievePokemons()
    
}

protocol PokemonListRemoteDataManagerInputProtocol: class {
    
    var output: PokemonListRemoteDataManagerOutputProtocol? { get set }
    
    func retrievePokemons()
    
}

// remote data manager -> Interactor

protocol PokemonListRemoteDataManagerOutputProtocol: class {
    
    func onPokemonsRetrieved(_ pokemons: Pokemons)
    func onError()
}
