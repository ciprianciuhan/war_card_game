//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ciprian Cucu-Ciuhan on 02/03/2020.
//  Copyright © 2020 Ciprian Cucu-Ciuhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var left_card: UIImageView!
    @IBOutlet weak var right_card: UIImageView!
    @IBOutlet weak var player_score: UILabel!
    @IBOutlet weak var cpu_score: UILabel!
    
    var left_score = 0, right_score = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        let left_number = Int.random(in: 2...14)
        let right_number = Int.random(in: 2...14)
        
        left_card.image = UIImage(named: "card\(left_number)")
        right_card.image = UIImage(named: "card\(right_number)")
        
        if (left_number > right_number){
            //player wins
            left_score += 1
            player_score.text = String(left_score)
        } else {
            //cpu wins
            right_score += 1
            cpu_score.text = String(right_score)
        }
        if (left_number == right_number){
            //tie
            left_score += 1
            right_score += 1
            player_score.text = String(left_score)
            cpu_score.text = String(right_score)
        }
        
        
    }
    
    
}

