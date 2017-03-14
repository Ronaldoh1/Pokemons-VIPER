//
//  PokemonsAPIService.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Alamofire
import Foundation
import Freddy

class PokemonsAPIService {

    static func fetchPokemons(completionHandler: @escaping (DataResponse<Pokemon>) -> Void) -> Alamofire.DataRequest {

        return Alamofire.request(Endpoint.Pokemons.fetchPokemons.url, method: .get).responseJSON(completionHandler: { (response) in

            let pokemonResponse = response.flatMap { json in

                try Pokemon(json: json as! JSON)

            }
            completionHandler(pokemonResponse)
        })

    }
}
