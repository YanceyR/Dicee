//
//  ViewController.swift
//  Dicee
//
//  Created by Yancey Reid on 9/19/17.
//  Copyright © 2017 Yancey Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let images = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image =
            UIImage(named: images[Int(arc4random_uniform(6))])
        diceImageView2.image =
            UIImage(named: images[Int(arc4random_uniform(6))])
    }
}

