//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        let ballImages = [
            UIImage(imageLiteralResourceName: "ball1"),
            UIImage(imageLiteralResourceName: "ball2"),
            UIImage(imageLiteralResourceName: "ball3"),
            UIImage(imageLiteralResourceName: "ball4"),
            UIImage(imageLiteralResourceName: "ball5"),
        ]
        
        let imgIdx = Int.random(in: 0...4)
        ballImageView.image = ballImages[imgIdx]
        
    }
}

