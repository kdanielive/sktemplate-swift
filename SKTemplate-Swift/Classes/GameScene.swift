//
//  GameScene.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/4/16.
//  Copyright (c) 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // MARK: - Private class constants
    private let player = Floppy()
    
    // MARK: - Private class variables
    private var lastUpdateTime:NSTimeInterval = 0.0
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        self.setupScene()
    }
    
    override func didMoveToView(view: SKView) {
    }
    
    // MARK: - Setup
    private func setupScene() {
        // Set the backgroundColor to Black
        self.backgroundColor = SKColor.blackColor()
        
        // Create an instance of our Bitmap font and make a label with it.
        let font = BMGlyphFont(name: "GameFont")
        let label = BMGlyphLabel(txt: "Yay, it works!", fnt: font)
        label.position = kScreenCenter
        self.addChild(label)
        
        // Run a scale sequence action on the label
        label.runAction(SKAction.scaleTo(1.1, duration: 0.25), completion: {
            label.runAction(SKAction.scaleTo(1.0, duration: 0.25))
        })
        
        self.addChild(self.player)
    }
    
    // MARK: - Touch Events
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let touchLocation = touch.locationInNode(self)
        
        self.player.flyToPosition(position: touchLocation)
        
        OALSimpleAudio.sharedInstance().playEffect(SoundNames.Pop)
    }
   
    
    // MARK: - Update
    override func update(currentTime: NSTimeInterval) {
        // Calculate "Delta"
        let delta = currentTime - self.lastUpdateTime
        self.lastUpdateTime = currentTime
        
        self.player.update()

    }
    
    // MARK: - De-Init
    deinit {
    }
}
