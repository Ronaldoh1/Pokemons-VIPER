//
//  PokemonsPresenter.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class PokemonListPresenter: NSObject, PokemonListPresenterProtocol {

    weak var view: PokemonListViewProtocol?
    var interactor: PokemonListInteractorInputProtocol?
    var router: PokemonListRouterProtocol?

    func viewDidLoad() {
        view?.showLoading()
        interactor?.retrievePokemons()
    }

    func showPokemonDetail(for pokemon: Pokemon) {
      router?.presentPokemonDetailsScreen(from: view!, for: pokemon)
    }

    private func sortPokemons(by sortType: PokemonSortType) {
        print("sorting by \(sortType)")
    }

}

extension PokemonListPresenter: PokemonListInteractorOutputProtocol {

    func didRetrievePokemons(_ pokemons: Pokemons) {
        view?.hideLoading()
        view?.showPokemons(with: pokemons)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
    
}
