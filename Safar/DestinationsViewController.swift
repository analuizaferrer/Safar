//
//  DestinationsViewController.swift
//  Safar
//
//  Created by Ana Luiza Ferrer on 02/12/18.
//  Copyright © 2018 Safar. All rights reserved.
//

import UIKit

class DestinationsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var destinationsCollectionView: UICollectionView!
    
    let destinations = ["Trendings","Beach Please","Discover Africa","Quick Getaway"]
    let destinationsImage = ["santorini","beach","africa","getaway"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return destinations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "destinationCollectionViewCell", for: indexPath) as! DestinationCollectionViewCell
        
        cell.destinationLabel.text = destinations[indexPath.row]
        cell.destinationImageView.image = UIImage.init(named: destinationsImage[indexPath.row])
       
        return cell
        
    }

}

