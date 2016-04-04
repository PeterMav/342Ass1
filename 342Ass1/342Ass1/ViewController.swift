//
//  ViewController.swift
//  342Ass1
//
//  Created by Peter Mavridis on 4/04/2016.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import UIKit

var gameModel = GameModel()
var tileData = TileData()
class ViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        func gameDidComplete(model: GameModel) {
            
        }
        
        func didMatchTile(model: GameModel, tileIndex: Int, previousTileIndex: Int) {
            
        }
        
        func didFailToMatchTile(model: GameModel, tileIndex: Int, previousTileIndex: Int) {
            
        }
        
        func scoreDidUpdate(model: GameModel, newScore: Int) {
            
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
       

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

