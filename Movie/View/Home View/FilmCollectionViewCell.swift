//
//  FilmCollectionViewCell.swift
//  Movie
//
//  Created by Grisha Diehl on 12.08.2022.
//

import UIKit
import SDWebImage

class FilmCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "FilmCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    //TODO: Настроить и разместить лейбл с названием фильма/сериала в ячейке, под постером (2:30 (2:37)), увеличить размер ячейки Collection View
    private let filmName: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else { return }
        
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}
