//
//  ViewController.swift
//  342Ass1
//
//  Created by Peter Mavridis on 17/08/2015.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import UIKit

var gameModel = GameModel()

class ViewController: UIViewController {

    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIImageView!
    @IBOutlet weak var tile5: UIImageView!
    @IBOutlet weak var tile6: UIImageView!
    @IBOutlet weak var tile7: UIImageView!
    @IBOutlet weak var tile8: UIImageView!
    @IBOutlet weak var tile9: UIImageView!
    @IBOutlet weak var tile10: UIImageView!
    @IBOutlet weak var tile11: UIImageView!
    @IBOutlet weak var tile12: UIImageView!
    @IBOutlet weak var tile13: UIImageView!
    @IBOutlet weak var tile14: UIImageView!
    @IBOutlet weak var tile15: UIImageView!
    @IBOutlet weak var tile16: UIImageView!
    @IBOutlet weak var tile17: UIImageView!
    @IBOutlet weak var tile18: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tile1.image = UIImage(named: "question.png")
        tile2.image = UIImage(named: "question.png")

       // tile3.image = UIImage(named: "question.png")
        /*
        tile4.image = UIImage(named: "question.png")
        tile5.image = UIImage(named: "question.png")
        tile6.image = UIImage(named: "question.png")
        tile7.image = UIImage(named: "question.png")
        tile8.image = UIImage(named: "question.png")
        tile9.image = UIImage(named: "question.png")
        tile10.image = UIImage(named: "question.png")
        tile11.image = UIImage(named: "question.png")
        tile12.image = UIImage(named: "question.png")
        tile13.image = UIImage(named: "question.png")
        tile14.image = UIImage(named: "question.png")
        tile15.image = UIImage(named: "question.png")
        tile16.image = UIImage(named: "question.png")
        tile17.image = UIImage(named: "question.png")
        tile18.image = UIImage(named: "question.png")
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

