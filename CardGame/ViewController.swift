//
//  ViewController.swift
//  CardGame
//
//  Created by Rong Xiao on 6/29/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreView: UILabel!
    
    @IBOutlet weak var rightScoreView: UILabel!
    
    var leftScore = 0;
    var rightScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        print("deal tapped.")
        let leftNum = Int.random(in: 2...14)
        
        let rightNum = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNum)")
        rightImageView.image = UIImage(named: "card\(rightNum)")
        
        if leftNum > rightNum{
            leftScore += 1
            leftScoreView.text = String(leftScore)
        }
        else if leftNum < rightNum{
            rightScore += 1
            rightScoreView.text = "\(rightScore)"
        }
        else{
            
        }
        
    }
    
}

