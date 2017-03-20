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

    static func fetchPokemons(completionHandler: @escaping (DataResponse<Any>) -> Void) -> Alamofire.DataRequest {

        return Alamofire.request(Endpoint.Pokemons.fetchPokemons.url, method: .get).responseJSON(completionHandler: { (response) in

            completionHandler(response)
        })

    }

    private func pokemons(json: DataResponse<Any>) -> [Pokemon] {
        let array = [Pokemon]()

        return array
    }
}
