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
    
    let tripday = ["Day 1","Day 2","Day 3","Day 4","Day 5","Day 6","Day 7"]
    let tripimage = ["day1","day2","day3","day4","day5","day6","day7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItineraryCollectionViewCell", for: indexPath) as! ItineraryCollectionViewCell
        cell.dayImageView.image = UIImage.init(named: tripimage[indexPath.row])
        cell.dayLabel.text = tripday[indexPath.row]
        
        return cell
        
    }
    
}
