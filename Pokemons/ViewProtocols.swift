//
//  ViewProtocols.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

protocol ReusableView: class {

}

protocol IndicatableView: class {
    
    func showActivityIndicator()
    func hideActivityIndicator()
    
}

extension IndicatableView {
    
    func showActivityIndicator() {
        print("Showing activity Indicator")
    }
    
    func hideActivityIndicator() {
        print("I'm hiding dude")
    }
    
}
