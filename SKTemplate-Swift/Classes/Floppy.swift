//
//  Floppy.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/12/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

class Floppy:SKSpriteNode {
    
    // MARK: - Private class constants
    private let frame0 = GameTextures.sharedInstance.textureWithName(name: SpriteNames.Bird0)
    private let frame1 = GameTextures.sharedInstance.textureWithName(name: SpriteNames.Bird1)
    private let frame2 = GameTextures.sharedInstance.textureWithName(name: SpriteNames.Bird2)
    private let frame3 = GameTextures.sharedInstance.textureWithName(name: SpriteNames.Bird3)
    
    
    // MARK: - Private class variables
    private var flapAnimation = SKAction()
    private var targetLocation = CGPoint()
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init() {
        let texture = GameTextures.sharedInstance.textureWithName(name: SpriteNames.Bird0)
        self.init(texture: texture, color: SKColor.whiteColor(), size: texture.size())
        
        self.setup()
        self.setupAnimation()
    }
    
    // MARK: - Setup
    private func setup() {
        self.targetLocation = kScreenCenter
    }
    
    private func setupAnimation() {
        self.flapAnimation = SKAction.animateWithTextures([frame0, frame1, frame2, frame3], timePerFrame: 0.1)
        
        self.runAction(SKAction.repeatActionForever(self.flapAnimation))
    }
    
    // MARK: - Actions
    func flyToPosition(position position: CGPoint) {
        self.targetLocation = position
        
        if self.targetLocation.x < self.position.x {
            self.xScale = -1
        } else {
            self.xScale = 1
        }
    }
    
    // MARK: - Update
    func update() {
        let newX = Smooth(startPoint: self.position.x, endPoint: self.targetLocation.x, smoothToAmount: 0.05)
        let newY = Smooth(startPoint: self.position.y, endPoint: self.targetLocation.y, smoothToAmount: 0.05)
        
        self.position = CGPoint(x: newX, y: newY)
    }
}
