//
//  TileView.swift
//  342Ass1
//
//  Created by Peter Mavridis on 19/08/2015.
//  Copyright (c) 2015 Peter Mavridis. All rights reserved.
//

import Foundation
import UIKit

class TileView: UIView {
    let image: UIImage?
    let imageView: UIImageView?
    var tileIndex: Int
    var innerView: UIView
    
     required init(coder aDecoder: NSCoder){
        
        self.image = UIImage(named: "question.png")
        self.imageView = UIImageView()
        self.tileIndex = 0
        innerView = UIView()
        super.init(coder: aDecoder)
        
        innerView.backgroundColor = UIColor.purpleColor()
        self.backgroundColor = UIColor.purpleColor()
        self.addSubview(innerView)
        
        image?.superclass
    }
    
    
}