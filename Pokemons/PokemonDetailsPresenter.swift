//
//  DetailsPresenter.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/14/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//


class PokemonDetailPresenter: PokemonDetailPresenterProtocol {
    weak var view: PokemonDetailViewProtocol?
    var router: PokemonDetailRouterProtocol?
    var pokemon: Pokemon?
    
    func viewDidLoad() {
        view?.showDetails(for: pokemon!)
    }
    
}
