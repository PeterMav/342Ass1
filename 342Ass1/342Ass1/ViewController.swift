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
var tileView = TileView.self
class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Touches began.
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        // Something goes here.
        var x: String?
       tileView.getTileIndex(tileData)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func gameDidComplete(model: GameModel) {
        gameModel.gameReset()
    }
    
    func didMatchTile(model: GameModel, tileIndex: Int, previousTileIndex: Int){
        
    }
    
    func didFailToMatchTile(model: GameModel, tileIndex: Int, previousTileIndex: Int){
        
    }
    
    func scoreDidUpdate(model: GameModel, newScore: Int){
        
    }
    
}

