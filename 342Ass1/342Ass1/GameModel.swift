//
//  GameModel.swift
//  342Ass1
//
//  Created by Peter Mavridis on 17/08/2015.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import Foundation

class GameModel: NSObject {
    
    struct TileData {
        var tileImage = [String]()
        var imageIdentifier: Int
    }
    
    var lastTileTapped: Int
    var tileData = [TileData]()
    
    override init () {
        lastTileTapped = 0;
    }
    
    
}