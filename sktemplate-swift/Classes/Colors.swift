//
//  Colors.swift
//  sktemplate-swift
//
//  Created by Jeremy Novak on 9/22/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

class Colors {
    
    /**
     Returns an SKColor from an RGB HEX value (e.g. 0x00AAFF, "Deep Sky Blue")
     
     - Tip: Find awesome colors at https://color.adobe.com/explore/newest/
     
     **/
    func colorFrom(rgbValue: Int) -> SKColor {
        return SKColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: 1.0)
    }
}
