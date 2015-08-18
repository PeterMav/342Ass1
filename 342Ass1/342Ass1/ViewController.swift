//
//  ViewController.swift
//  342Ass1
//
//  Created by Peter Mavridis on 17/08/2015.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import UIKit

var gameModel = GameModel()
var tileData = TileData()
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
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        tile1.image = UIImage(named: tileData.imageArray[3])
        tile2.image = UIImage(named: tileData.imageArray[3])
        tile3.image = UIImage(named: tileData.imageArray[3])
        tile4.image = UIImage(named: tileData.imageArray[3])
        tile5.image = UIImage(named: tileData.imageArray[3])
        tile6.image = UIImage(named: tileData.imageArray[3])
        tile7.image = UIImage(named: tileData.imageArray[3])
        tile8.image = UIImage(named: tileData.imageArray[3])
        tile9.image = UIImage(named: tileData.imageArray[3])
        tile10.image = UIImage(named: tileData.imageArray[3])
        tile11.image = UIImage(named: tileData.imageArray[3])
        tile12.image = UIImage(named: tileData.imageArray[3])
        tile13.image = UIImage(named: tileData.imageArray[3])
        tile14.image = UIImage(named: tileData.imageArray[3])
        tile15.image = UIImage(named: tileData.imageArray[3])
        tile16.image = UIImage(named: tileData.imageArray[3])
        tile17.image = UIImage(named: tileData.imageArray[3])
        tile18.image = UIImage(named: tileData.imageArray[3])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

