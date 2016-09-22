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
    fileprivate let player = Floppy()
    
    // MARK: - Private class variables
    fileprivate var lastUpdateTime:TimeInterval = 0.0
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        self.setupScene()
    }
    
    override func didMove(to view: SKView) {
    }
    
    // MARK: - Setup
    fileprivate func setupScene() {
        // Set the backgroundColor to Black
        self.backgroundColor = SKColor.black
        
        // Create an instance of our Bitmap Font and make a label with it.
        let font = BMGlyphFont(name: "GameFont")
        let label = BMGlyphLabel(text: "Yay, it works!", font: font)
        label?.position = kScreenCenter
        self.addChild(label!)
        
        // Run a scale sequence action on the label
        label?.run(SKAction.scale(to: 1.1, duration: 0.25), completion: {
            label?.run(SKAction.scale(to: 1.0, duration: 0.25))
        })
        
        self.addChild(self.player)
    }
    
    // MARK: - Touch Events
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let touchLocation = touch.location(in: self)
        
        player.flyTo(position: touchLocation)
        
        OALSimpleAudio.sharedInstance().playEffect(SoundNames.Pop)
    }
   
    
    // MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        // Calculate "Delta"
        /* Uncomment these two lines to use delta
        let delta = currentTime - self.lastUpdateTime
        self.lastUpdateTime = currentTime
        */
        
        player.update()

    }
    
    // MARK: - De-Init
    deinit {
    }
}
