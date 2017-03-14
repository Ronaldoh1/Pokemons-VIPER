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

    func fetchPokemons(completion:(Pokemons) -> ()?) {
        //var pokemons:Pokemons?
        
        PokemonsAPIService.fetchPokemons { (response) in
            switch response.result {
            case .success(let data): break
                //pokemons = Pokemons(json: data)
            case .failure(let error):
                print(error)
            }
        }
    }

}
