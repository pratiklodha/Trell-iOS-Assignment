//
//  CollectionViewCell.swift
//  TrellClone
//
//  Created by Pratik Lodha on 25/07/20.
//  Copyright © 2020 Pratik Lodha. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var postImageLabel: UIImageView!
    @IBOutlet weak var postTextLabel: UILabel!
    @IBOutlet weak var authorTextLabel: UILabel!
    
    func configure(with postImage: UIImage, postText: String, postAuthor: String) {
        postImageLabel.image = postImage
        postTextLabel.text = postText
        authorTextLabel.text = postAuthor
        postTextLabel.numberOfLines = 0
    }
}
