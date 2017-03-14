//
//  PokemonsPresenter.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class PokemonsPresenter: NSObject, PokemonsPresentation {
    weak var view: PokemonsView?
    var interactor: PokemonsUseCase!
    var navigationHandler: PokemonsNavigationHandler!

    var pokemons: [Pokemon] = [] {
        didSet {
            if pokemons.count > 0 {
                view?.showPokemonsData(pokemons: pokemons)
            } else {
                view?.showNoContentScreen()
            }
        }
    }

    func viewDidLoad() {
        interactor.fetchPokemons()
    }

    func didSelectPokemon(_ pokemon: Pokemon) {

    }

    func didClickSortButton() {
        navigationHandler.presentSortOptions { (option) in
            self.sortPokemons(by: option)
        }
    }

    private func sortPokemons(by sortType: PokemonSortType) {
        print("sorting by \(sortType)")
    }

}

extension PokemonsPresenter: PokemonsInteractorOutput {

    func pokemonsFetched(_ pokemons: [Pokemon]) {
        self.pokemons = pokemons
        view?.hideActivityIndicator()
    }

    func pokemonsFetchFailed() {
        view?.showNoContentScreen()
        view?.hideActivityIndicator()
    }
}

extension PokemonsPresenter: UITableViewDelegate {

}

extension PokemonsPresenter: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
         cell.backgroundColor = .blue
        return cell
    }
}
