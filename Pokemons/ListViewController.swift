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

    var presenter: PokemonListPresenterProtocol?
    
    var pokemons: [Pokemon] = []

    fileprivate lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
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
        self.pokemons = pokemons.pokemons
        tableView.reloadData()
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       presenter?.showPokemonDetail(for: self.pokemons[indexPath.row])
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return !self.pokemons.isEmpty ? self.pokemons.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PokemonCell.identifier, for: indexPath) as! PokemonCell
        let pokemon = self.pokemons[indexPath.row]
        cell.configureCell(pokemon: pokemon)
        return cell
    }
}









