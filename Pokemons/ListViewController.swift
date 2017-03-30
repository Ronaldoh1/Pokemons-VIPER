//
//  ListViewController.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    // reference to presenter's interface 

    var presenter: PokemonListPresenter?
    
    fileprivate lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self.presenter
        tableView.dataSource = self.presenter
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 70
        tableView.showsVerticalScrollIndicator = true
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PokemonCell.self, forCellReuseIdentifier: PokemonCell.identifier)
        return tableView
    }()
    
    // MARK: LifeCyle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Pokemons"
        presenter?.viewDidLoad()
        presenter?.pokemonTableView = tableView
        setUpViews()
    }

    // MARK: UI Setup

    private func setUpViews() {
        view.addSubview(tableView)
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}

extension ListViewController: PokemonListViewProtocol {
    
    
    func showNoContentScreen() {
        
    }
    
    func showError() {
        
    }
    
    func showPokemons(with pokemons: Pokemons) {
      
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    
}











