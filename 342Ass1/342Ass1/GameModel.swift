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
    var tileImage: String // Used to create the images for use later.
    var imageIdentifier: Int // The identifier of the stored image.
    var imageArray = [String]() // The array of images used in the game.
    init(){
        tileImage = " "
        imageIdentifier = 0;
        imageArray += ["baldhill.png"]
        imageArray += ["cathedral.png"]
        imageArray += ["lake.png"]
        imageArray += ["question.png"]
    }
    init(image: String, identity: Int){
        self.tileImage = image
        self.imageIdentifier = identity
    }
}

class GameModel: NSObject, Printable, DebugPrintable {
    var tileData = [TileData]() // The array of Tiledata structs.
    var images = TileData() // Instance of the array that holds the images used to create the tile images.
    var lastTileTapped: Int
    var secondLastTapped: Int
    var firstTouched: Bool
    var totalTilesMatched: Int
    var score: Int
    var counter: Int
    var k: Int
    
    func gameReset(){
        counter = 0;
        k = 0;
        lastTileTapped = 0;
        firstTouched = false
        totalTilesMatched = 0
        score = 0
        // Loads the images and identifiers.
        for var i = 0; i < 18; i++ {
            tileData += [TileData.self(image: images.imageArray[counter],identity: k)]
            counter++
            k++
            if counter == 3{
                counter = 0
                k = 0
            }
        }
        println("Count: \(tileData.count)")
        println("Before the shuffle")
        println(description)
        tileData.shuffle() // The shuffle
        println("After Shuffle")
        println(description)
    }
    
    override init () {
        counter = 0;
        k = 0;
        lastTileTapped = 0;
        secondLastTapped = 0;
        firstTouched = false
        totalTilesMatched = 0
        score = 0
        super.init()
        gameReset()
    }
    // The description method prints before and after the shuffle
    // showing the shuffle works
    var temp = " "
    override var description : String {
        for var i = 0; i < tileData.count; i++ {
            print(tileData[i].tileImage)
            print(" ")
            print(tileData[i].imageIdentifier)
            println()
        }
        return temp
    }
    
    func pushTileIndex(index: Int) {
        secondLastTapped = lastTileTapped
        lastTileTapped = index
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







