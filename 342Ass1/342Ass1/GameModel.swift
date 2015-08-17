//
//  GameModel.swift
//  342Ass1
//
//  Created by Peter Mavridis on 17/08/2015.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import Foundation
import UIKit

struct TileData {
    var tileImage = [String]()
    var imageIdentifier: Int
    var imageArray = [String]()
    init(){
        imageIdentifier = 0;
        imageArray += ["baldhill.png"]
        imageArray += ["cathedral.png"]
        imageArray += ["lake.png"]
        imageArray += ["question.png"]
    }
}

class GameModel: NSObject, Printable, DebugPrintable {
    var tileData = [TileData]()
    var images = TileData()
    var lastTileTapped: Int
    var firstTouched: Bool
    var totalTilesMatched: Int
    var score: Int
    var counter: Int
    var j: Int
    var k: Int
    
    func gameReset(){
        counter = 0;
        j = 9;
        k = 0;
        lastTileTapped = 0;
        firstTouched = false
        totalTilesMatched = 0
        score = 0
        // Loads the images and identifiers
        for var i = 0; i < 9; i++ {
            tileData[i].tileImage = images.imageArray[counter]
            tileData[i].imageIdentifier = k
            tileData[j].tileImage = images.imageArray[counter]
            tileData[j].imageIdentifier = k
            counter++
            j++
            k++
            if counter == 3{
                counter = 0
                k = 0
            }
        }
        tileData.shuffle() // The shuffle
        printArray()
    }
    
    override init () {
        counter = 0;
        j = 1;
        k = 0;
        lastTileTapped = 0;
        firstTouched = false
        totalTilesMatched = 0
        score = 0
        super.init()
        gameReset().self
    }
    
    func printArray(){
        for var i = 0; i < 18; i++ {
            println(tileData[i].tileImage)
        }
    }
}


// The shuffle
extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<18
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}