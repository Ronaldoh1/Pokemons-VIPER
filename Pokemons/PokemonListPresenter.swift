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
    
    var pokemons: [Pokemon] = []
    var pokemonTableView: UITableView?

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
        self.pokemons = pokemons.pokemons
        pokemonTableView?.reloadData()
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
    
}


extension PokemonListPresenter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.showPokemonDetail(for: self.pokemons[indexPath.row])
    }
    
}

extension PokemonListPresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return !self.pokemons.isEmpty ? self.pokemons.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PokemonCell.identifier, for: indexPath) as! PokemonCell
        let pokemon = self.pokemons[indexPath.row]
        cell.configureCell(pokemon: pokemon)
        return cell
    }
    
}
