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
    
    var leftNum = 2
    var rightNum = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randonmizeCard()
    }

    @IBAction func dealTapped(_ sender: Any) {
        //print("deal tapped.")
        randonmizeCard()
        updateScore()
        
    }
    
    private func randonmizeCard(){
        
        // arc4random_uniform returns a random number less than upper_bound
        // arc4random_uniform(15))
        
        
        // Int.random() returns a random num in the range. '...' inclusive the bounds
        leftNum = Int.random(in: 2...14)
        rightNum = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNum)")
        rightImageView.image = UIImage(named: "card\(rightNum)")
        
        
    }
    
    private func updateScore(){
        
        if leftNum > rightNum{
            leftScore += 1
            leftScoreView.text = String(leftScore)
        }
        else if leftNum < rightNum{
            rightScore += 1
            rightScoreView.text = "\(rightScore)"
        }
        else{
            // tie, no action
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randonmizeCard()
        updateScore()
    }
    
}

