//
//  PokemonListRemoteDataManager.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/29/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Foundation
import Alamofire
import Freddy


class PokemonListRemoteDataManager: PokemonListRemoteDataManagerInputProtocol {
    var output: PokemonListRemoteDataManagerOutputProtocol?
    
    func retrievePokemons() {
        Alamofire.request(Endpoints.Pokemons.fetchPokemons.url, method: .get).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                let json = try JSON(data: data)
                let pokemons = try Pokemons(json: json)
                self.output?.onPokemonsRetrieved(pokemons)
                } catch let error {
                    print(error)
                }
            case .failure(_):
                self.output?.onError()
            }
            
        }
    }
    
}
