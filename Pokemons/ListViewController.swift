//
//  ListViewController.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, PokemonsViewInterface {

    // reference to presenter's interface 

    var presenter: PokemonsViewInterface!

    fileprivate lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 80
        tableView.showsVerticalScrollIndicator = true
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.navigationItem.title = "Pokemons"


    }


    // MARK: PokemonsViewInterface 

    func showNoContentScreen() {
        print("showing empty screen")
    }

    func showPokemonsData(pokemons: [Pokemon]) {

    }

}







