//
//  PokemonsContract.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//


// protocol that defines the view input method 

protocol PokemonsViewInterface: class {

    func showPokemonsData(pokemons:[Pokemon])
    func showNoContentScreen()
}
