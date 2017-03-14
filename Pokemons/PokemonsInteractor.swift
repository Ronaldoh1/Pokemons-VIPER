//
//  PokemonsInteractor.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Alamofire
import Foundation

class PokemonsInteractor: PokemonsUseCase {
    weak var output: PokemonsInteractorOutput!

    func fetchPokemons() {
        PokemonsAPIService.fetchPokemons { (response) in
            print(response.debugDescription)
        }
    }

}
