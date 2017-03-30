//
//  Pokemon.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit
import Freddy

public struct Pokemon {

    var name: String
    var url: URL

}

extension Pokemon: JSONDecodable {

    public init(json: JSON) throws {
        self.name = try json.getString(at: "name")
        let urlStringRaw = try json.getString(at: "url")

        guard let url = URL(string: urlStringRaw) else {
            throw JSON.Error.keyNotFound(key: "url")
        }

        self.url = url
    }

}
