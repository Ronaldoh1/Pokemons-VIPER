//
//  PokemonsContract.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

// protocol that defines the view input method

protocol PokemonsView: IndicatableView {

    func showPokemonsData(pokemons:[Pokemon])
    func showNoContentScreen()

}

// protocol that defines the commands sent from the view to the presenter


protocol PokemonsPresentation: class {

    weak var view: PokemonsView? { get set }

    var interactor: PokemonsUseCase! {get set }
    var navigationHandler: PokemonsNavigationHandler! { get set }

    func viewDidLoad()
    func didClickSortButton()
    func didSelectPokemon(_ pokemon: Pokemon)

}

protocol PokemonsUseCase: class {
    weak var output: PokemonsInteractorOutput! { get set}
    func fetchPokemons()
}

protocol PokemonsInteractorOutput: class {

    func pokemonsFetched(_ pokemons: [Pokemon])
    func pokemonsFetchFailed()

}

protocol PokemonsNavigationHandler: class {
    weak var viewController: ListViewController? { get set }

    func presentSortOptions(completion: ((PokemonSortType) -> ())?)
    func presentDetails(forPokemon pokemon: Pokemon)

    static func assembleModule() -> UIViewController

}

