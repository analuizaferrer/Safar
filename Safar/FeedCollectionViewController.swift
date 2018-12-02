//
//  FeedCollectionViewController.swift
//  Safar
//
//  Created by Ana Luiza Ferrer on 01/12/18.
//  Copyright © 2018 Safar. All rights reserved.
//

import Foundation
import UIKit

class FeedCollectionViewController: UICollectionViewController {
    
    let feedImages = ["phuket", "machuPicchu", "rio"]
    
    let reuseIdentifier = "FeedCell"
    
    let sectionInsets = UIEdgeInsets(top: 50.0, left: 0, bottom: 50.0, right: 0)
    
    let itemsPerRow: CGFloat = 1
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return feedImages.count
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCollectionViewCell

        cell.photoImageView.image = UIImage.init(named: feedImages[indexPath.row])
        
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
