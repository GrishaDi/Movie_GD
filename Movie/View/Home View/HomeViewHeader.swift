//
//  HomeViewHeader.swift
//  Movie
//
//  Created by Grisha Diehl on 06.08.2022.
//

import UIKit

class HomeViewHeader: UIView {

    private let headerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "movieHeader")
        return imageView
    }()
    
    private let randomFilmButton: UIButton = {
        let button = UIButton()
        button.setTitle("Choice of Luck", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerImageView)
        addGradient()
        addSubview(randomFilmButton)
        applyConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerImageView.frame = bounds
    }
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    private func applyConstraints() {
        let randomFilmButtonConstraints = [
            randomFilmButton.centerXAnchor.constraint(equalTo: headerImageView.centerXAnchor),
            randomFilmButton.widthAnchor.constraint(equalTo: headerImageView.widthAnchor, multiplier: 0.35),
            randomFilmButton.bottomAnchor.constraint(equalTo: headerImageView.bottomAnchor, constant: -15),
            randomFilmButton.heightAnchor.constraint(equalTo: randomFilmButton.widthAnchor, multiplier: 0.2)
        ]
        NSLayoutConstraint.activate(randomFilmButtonConstraints)
    }
    
}
