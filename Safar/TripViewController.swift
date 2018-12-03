//
//  TripViewController.swift
//  Safar
//
//  Created by Ana Luiza Ferrer on 03/12/18.
//  Copyright © 2018 Safar. All rights reserved.
//

import UIKit

class TripViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {

    @IBOutlet weak var itineraryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItineraryCollectionViewCell", for: indexPath) as! ItineraryCollectionViewCell
        
        cell.dayImageView.image = UIImage.init(named: "day1")
        
        return cell
        
    }
    
}
