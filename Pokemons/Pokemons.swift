//
//  Pokemons.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/14/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit
import Freddy

struct Pokemons {
    
    var pokemons: [Pokemon]
    
}

extension Pokemons: JSONDecodable {
    
    init(json: JSON) throws {
        let resultsArray = try json.getArray(at: "results")
        var pokemonsArray = [Pokemon]()
        for json in resultsArray {
            let pokemon = try Pokemon(json: json)
            pokemonsArray.append(pokemon)
        }
        self.pokemons = pokemonsArray
    }
    
}
