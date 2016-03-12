//
//  Utilities.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/12/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit


func ColorFromRGB(rgbvalue rgbValue: Int) -> SKColor {
    return SKColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: 1.0)
}


func Smooth(startPoint startPoint: CGFloat, endPoint: CGFloat, filter: CGFloat) -> CGFloat {
    return (startPoint * (1 - filter)) + endPoint * filter
}

func RandomIntegerBetween(min min: Int, max: Int) -> Int {
    return Int(UInt32(min) + arc4random_uniform(UInt32(max - min + 1)))
}


func RandomFloatRange(min min: CGFloat, max: CGFloat) -> CGFloat {
    return CGFloat(Float(arc4random()) / 0xFFFFFFFF) * (max - min) + min
}
