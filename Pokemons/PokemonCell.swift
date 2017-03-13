//
//  PokemonCell.swift
//  Pokemons
//
//  Created by Ronald Hernandez on 3/13/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit
import AlamofireImage


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
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell(pokemon: Pokemon) {
        self.nameLabel.text = pokemon.name
        self.profileImage.af_setImage(withURL: pokemon.url)
    }

    private func setUpViews() {
        self.addSubview(profileImage)

        profileImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        profileImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true

        self.addSubview(nameLabel)

        nameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 5).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
    }

}
