//
//  Constants.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/4/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

// MARK: - Debug
let kDebug = false

// MARK: - Screen dimension convenience
let kViewSize = UIScreen.mainScreen().bounds.size
let kScreenCenter = CGPoint(x: kViewSize.width / 2, y: kViewSize.height / 2)
let kScreenCenterBottom = CGPoint(x: kViewSize.width / 2, y: kViewSize.height * 0.3)
let kScreenCenterTop = CGPoint(x: kViewSize.width / 2, y: kViewSize.height * 0.7)

// MARK: - Device size convenience
let kDeviceTablet = (UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad)
