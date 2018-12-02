//
//  ViewController.swift
//  Safar
//
//  Created by Ana Luiza Ferrer on 27/11/18.
//  Copyright © 2018 Safar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var safarLogoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.red
        
        backgroundImageView.image = UIImage.init(named: "loginBackground")
        
        safarLogoImageView.image = UIImage.init(named: "compass")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
        
    }
    
}
