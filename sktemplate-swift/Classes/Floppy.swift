


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
    fileprivate let frame0 = GameTextures.sharedInstance.textureWith(name: SpriteNames.Bird0)
    fileprivate let frame1 = GameTextures.sharedInstance.textureWith(name: SpriteNames.Bird1)
    fileprivate let frame2 = GameTextures.sharedInstance.textureWith(name: SpriteNames.Bird2)
    fileprivate let frame3 = GameTextures.sharedInstance.textureWith(name: SpriteNames.Bird3)
    
    
    // MARK: - Private class variables
    fileprivate var flapAnimation = SKAction()
    fileprivate var targetPosition = CGPoint()
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    fileprivate override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init() {
        let texture = GameTextures.sharedInstance.textureWith(name: SpriteNames.Bird0)
        self.init(texture: texture, color: SKColor.white, size: texture.size())
        
        self.setup()
        self.setupAnimation()
    }
    
    // MARK: - Setup
    fileprivate func setup() {
        targetPosition = kScreenCenter
    }
    
    fileprivate func setupAnimation() {
        flapAnimation = SKAction.animate(with: [frame0, frame1, frame2, frame3], timePerFrame: 0.1)
        
        self.run(SKAction.repeatForever(self.flapAnimation))
    }
    
    // MARK: - Actions
    func flyTo(position: CGPoint) {
        targetPosition = position
        
        if targetPosition.x < self.position.x {
            self.xScale = -1
        } else {
            self.xScale = 1
        }
    }
    
    // MARK: - Update
    func update() {
        let newX = Smooth(start: self.position.x, end: targetPosition.x, percent: 0.05)
        let newY = Smooth(start: self.position.y, end: targetPosition.y, percent: 0.05)
        
        self.position = CGPoint(x: newX, y: newY)
    }
}
