//
//  FeedViewController.swift
//  Safar
//
//  Created by Ana Luiza Ferrer on 02/12/18.
//  Copyright © 2018 Safar. All rights reserved.
//

import Foundation
import UIKit

class FeedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var feedCollectionView: UICollectionView!
    
    let feedProfiles = ["azinprofile","flavioprofile","richardprofile","anaprofile"]
    let feedImages = ["phuket","tahoe","machuPicchu","rio"]
    let feedUsers = ["Azin Mirzaagha", "Flávio Romero", "Richard Tan", "Ana Ferrer"]
    let feedData = ["20 minutes ago", "1 hour ago","5 hours ago","1 day ago"]
    let feedLabel = ["Chillin' in Thailand 👌", "Cal adventure 🤙","Llamaaas!🤪","Just another day of summer in Rio 😎"]
    let feedLocation = ["Phuket, Thailand","South Lake Tahoe, USA", "MachuPicchu, Peru", "Rio de Janeiro, Brazil"]
    
    let reuseIdentifier = "FeedCell"
    
    let sectionInsets = UIEdgeInsets(top: 50.0, left: 0, bottom: 50.0, right: 0)
    
    let itemsPerRow: CGFloat = 1
    
    override func viewDidLoad() {
        
        feedCollectionView.contentInsetAdjustmentBehavior = .never
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return feedImages.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCollectionViewCell
        
        cell.photoImageView.image = UIImage.init(named: feedImages[indexPath.row])
        cell.nameLabel.text = feedUsers[indexPath.row]
        cell.dateLabel.text = feedData[indexPath.row]
        cell.descriptionLabel.text = feedLabel[indexPath.row]
        cell.locationLabel.text = feedLocation[indexPath.row]
        cell.profileImage.image = UIImage.init(named: feedProfiles[indexPath.row])
        
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingSpace = sectionInsets.left
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return sectionInsets
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return sectionInsets.left
        
    }
}
