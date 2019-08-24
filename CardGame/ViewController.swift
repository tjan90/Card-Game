//
//  ViewController.swift
//  CardGame
//
//  Created by Tanveer Jan on 24/08/2019.
//  Copyright © 2019 Tanveer Jan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Cards
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var RightImageView: UIImageView!
    
    //Deal Button
    
    
    //Score Labels
    @IBOutlet weak var LeftScoreLabel: UILabel!
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }//ViewDidLoadEnds

    //DealButton
    @IBAction func DealButton(_ sender: Any) {
        
        let left = Int.random(in: 2...14)
        let right = Int.random(in: 2...14)
        LeftImageView.image = UIImage(named: "card\(left)")
        RightImageView.image = UIImage(named: "card\(right)")
        
        
        
        if(left > right){
          LeftScoreLabel.text = String(Int(LeftScoreLabel.text!)! + 1)
        }else if(left == right){
                print("Equal")
        }else{
            RightScoreLabel.text = String(Int(RightScoreLabel.text!)! + 1)
        }
        
    }
}

