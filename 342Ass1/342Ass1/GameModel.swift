//
//  GameModel.swift
//  342Ass1
//
//  Created by Peter Mavridis on 4/04/2016.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import Foundation


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

class GameModel: NSObject {
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
        for _ in 0 ..< 18 {
            tileData += [TileData.self(image: images.imageArray[counter],identity: k)]
            counter += 1
            k += 1
            if counter == 3{
                counter = 0
                k = 0
            }
        }
        tileData.shuffle()
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
        for i in 0 ..< tileData.count {
            print(tileData[i].tileImage, terminator: "")
            print(" ", terminator: "")
            print(tileData[i].imageIdentifier, terminator: "")
            print("")
        }
        return temp
    }
    
    // The tile touched.
    func pushTileIndex(index: Int) {
        secondLastTapped = lastTileTapped
        lastTileTapped = index
    }
    func getImage(index: Int)-> String {
        return tileData[index].tileImage
    }
    func getIdentifier(index: Int)->Int{
        return tileData[index].imageIdentifier
    }
    func getTileIndex(index: Int)-> Int{
        return 1
    }
    
}

protocol GameModelDelegate{
    func gameDidComplete(model: GameModel)
    func didMatchTile(model: GameModel, tileIndex: Int, previousTileIndex: Int)
    func didFailToMatchTile(model: GameModel, tileIndex: Int, previousTileIndex: Int)
    func scoreDidUpdate(model: GameModel, newScore: Int)
}

// The shuffle
extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<18
        {
            sortInPlace { (_,_) in arc4random() < arc4random() }
        }
    }
}







