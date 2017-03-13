//
//  Endpoint.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import Foundation

enum Endpoint {

    enum Pokemons: EndPoint {
        case fetchPokemons

        public var path: String {
            switch self {
            case .fetchPokemons:
                return "/pokemon"
            }
        }

        public var url: String {
            switch self {
            case .fetchPokemons:
                return "\(API.baseUrl)\(path)"
            }
        }

        public var method: String {
            switch self {
            case .fetchPokemons:
                return "GET"
            }
        }
    }

}
