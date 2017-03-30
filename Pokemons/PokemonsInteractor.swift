//
//  PokemonsInteractor.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Alamofire
import Foundation

class PokemonListInteractor: PokemonListInteractorInputProtocol {
    weak var presenter: PokemonListInteractorOutputProtocol?
    var remoteDataManager: PokemonListRemoteDataManagerInputProtocol?
    
    func retrievePokemons() {
        remoteDataManager?.retrievePokemons()
    }
    
}

extension PokemonListInteractor: PokemonListRemoteDataManagerOutputProtocol {
    
    func onPokemonsRetrieved(_ pokemons: Pokemons) {
        presenter?.didRetrievePokemons(pokemons)
    }
    
    func onError() {
        presenter?.onError()
    }
    
}
