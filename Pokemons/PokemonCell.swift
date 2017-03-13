//
//  PokemonCell.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit


class PokemonCell: UITableViewCell {

    static let identifier = "PokemonCell"

    private let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        imageView.layer.masksToBounds = true
        return imageView
    }()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ron is awesome"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell(pokemon: Pokemon) {
        self.nameLabel.text = pokemon.name
    }



}
