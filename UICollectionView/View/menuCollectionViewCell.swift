//
//  menuCollectionViewCell.swift
//  UICollectionView
//
//  Created by Хван Эдуард on 12.02.2024.
//

import UIKit

class menuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var menu: Menu? {
        didSet {
            nameLabel.text = menu?.name
            if let image = menu?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
}
