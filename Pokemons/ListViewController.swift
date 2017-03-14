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

    var presenter: PokemonsPresenter!

    fileprivate lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self.presenter
        tableView.dataSource = self.presenter
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

        self.navigationItem.title = "Pokemons"
        presenter.viewDidLoad()
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

    // MARK: PokemonsViewInterface 

    func showNoContentScreen() {
        print("showing empty screen")
    }

    func showPokemonsData(pokemons: [Pokemon]) {

    }

}







