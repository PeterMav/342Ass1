//
//  TileView.swift
//  342Ass1
//
//  Created by Peter Mavridis on 4/04/2016.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import Foundation
import UIKit

class TileView: UIView {
    let image: UIImage?
    let imageView: UIImageView?
    var tileIndex: Int
    var innerView: UIView
    var imageName: String?
    //let tileData = [TileData]()
    let images = TileData()
    required init?(coder aDecoder: NSCoder){
        self.imageName = images.imageArray[3] // Sets all tiles to question.png
        self.image = UIImage(named: imageName!)
        self.imageView = UIImageView(image: image!)
        self.tileIndex = 0
        innerView = UIView()
        super.init(coder: aDecoder)
        
        // Sets the background color of the tiles!
        innerView.backgroundColor = UIColor.purpleColor()
        self.backgroundColor = UIColor.purpleColor()
        self.addSubview(innerView)
        
        
        // Sets the constraints to the images size and loads images to the tiles.
        imageView?.frame = CGRect(x: 0, y: 0, width: 90, height: 80)
        
        //self.addSubview(imageView!)
        self.addSubview(imageView!)
        
        
        
    }
}