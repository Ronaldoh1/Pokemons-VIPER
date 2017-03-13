//
//  API.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Foundation

struct API {

    static let baseUrl = "http://pokeapi.co/api/v2"

}


protocol EndPoint {

    var path: String { get }
    var url: String { get }
    
}
