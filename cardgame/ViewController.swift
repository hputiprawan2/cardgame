//
//  ViewController.swift
//  cardgame
//
//  Created by Hanna Putiprawan on 8/18/20.
//  Copyright © 2020 Hanna Putiprawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var left_card_imageview: UIImageView!
    
    @IBOutlet weak var right_card_imageview: UIImageView!
    
    @IBOutlet weak var left_score_label: UILabel!
    
    @IBOutlet weak var right_score_label: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        left_card_imageview.image = UIImage(named: "card\(leftNumber)")
        right_card_imageview.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            // Left side wins
            leftScore += 1
            left_score_label.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            // Right side wins
            rightScore += 1
            right_score_label.text = String(rightScore)
        }
        
    }
    
}

