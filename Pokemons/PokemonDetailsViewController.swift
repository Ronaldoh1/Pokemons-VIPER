//
//  PokemonDetailsViewController.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/14/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var presenter: PokemonDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
        
        presenter?.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension PokemonDetailViewController: PokemonDetailViewProtocol {
    
    func showDetails(for pokemon: Pokemon) {
        
        self.navigationItem.title = pokemon.name
    }
    
}

extension PokemonDetailViewController: IndicatableView {
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
       
       self.hideActivityIndicator()
    }
    
    func hideActivityIndicator() {
        print("this is my new implementation")
    }
    
   
}
