//
//  Utilities.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/12/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit


/**
 Returns an SKColor from an RGB HEX value (e.g. 0x00AAFF) "Deep Sky Blue"
 
 - Tip: Find awesome colors at https://color.adobe.com/explore/newest/
 
**/
func ColorFromRGB(rgbvalue rgbValue: Int) -> SKColor {
    return SKColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: 1.0)
}


/**
 
  Returns a "smoothed" position between the starting and ending points.
 
  - Parameter startPoint: The starting CGPoint.
  - Parameter endPoint:   The destination CGPoint.
  - Parameter smoothToAmount: Percentage of distance to move between the startPoint and endPoint.
    Range is between 0.0 meaning 0% and 1.0 meaning 100%.
 
  - Returns: CGPoint calculated to be smoothToAmount distance between startPoint and endPoint.
 
**/
func Smooth(startPoint startPoint: CGFloat, endPoint: CGFloat, smoothToAmount: CGFloat) -> CGFloat {
    return (startPoint * (1 - smoothToAmount)) + endPoint * smoothToAmount
}

/**
 Returns a random Integer between and including the values supplied for min and max.
 
 - Parameter min: The minimum value that should be retured.
 - Parameter max: The maximum value that should be returned.
 
 - Returns: Integer between and including the values supplied for min and max.
**/
func RandomIntegerBetween(min min: Int, max: Int) -> Int {
    return Int(UInt32(min) + arc4random_uniform(UInt32(max - min + 1)))
}


/**
 Returns a random CGFloat betwen and including the values supplied for min and max.
 
 - Parameter min: The minimum value that should be returned.
 - Parameter max: The maximum value that should be returned.
 
 - Returns: CGFloat between and including the values supplied for min and max.
**/
func RandomFloatRange(min min: CGFloat, max: CGFloat) -> CGFloat {
    return CGFloat(Float(arc4random()) / 0xFFFFFFFF) * (max - min) + min
}
