//
//  CollectionViewController.swift
//  TrellClone
//
//  Created by Pratik Lodha on 25/07/20.
//  Copyright © 2020 Pratik Lodha. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let postTitles: [String] = [
        "Facial in just Rs5. Instant glow and atural solution",
        "Gym tips for big biceps. Look and feel like HULK",
        "Get free movie tickets on bookmyshow.com",
        "Tricks to increase weight in 30 days. Become better version of yourself",
        "iPhone XR honest review. To buy or not buy?",
        "Get good marks by studying night before the exam. Without ratta!",
        "Look younger than your children in 31 days."
    ]

    let postImages: [UIImage] = [
        UIImage(named: "facial")!,
        UIImage(named: "bigbiceps")!,
        UIImage(named: "freetickets")!,
        UIImage(named: "increaseweight")!,
        UIImage(named: "iphonexrreview")!,
        UIImage(named: "goodmarks")!,
        UIImage(named: "lookyoung")!
    ]
    
    let postAuthors: [String] = [
        "@shaan",
        "malvi_nath",
        "sita007",
        "_palpal",
        "angelPriya",
        "@todStar",
        "_game000"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postTitles.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let postCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            postCell.configure(with: postImages[indexPath.row], postText: postTitles[indexPath.row], postAuthor: postAuthors[indexPath.row])
            //postCell.configure(with: postImages[indexPath.row], postText: postTitles[indexPath.row], postAuthor: [indexPath.row])
            
            cell = postCell
        }
        cell.layer.cornerRadius = 6.0
//        cell.layer.borderWidth = 1.0
//        cell.layer.borderColor = UIColor.clear.cgColor
//        cell.layer.masksToBounds = true
        return cell
    }
}
