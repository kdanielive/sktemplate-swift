//
//  GameTextures.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/20/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

let GameTexturesInstance = GameTextures()

class GameTextures {
    
    class var sharedInstance:GameTextures {
        return GameTexturesInstance
    }
    
    // MARK: - Private class variables
    private var atlas = SKTextureAtlas()
    
    
    // MARK: - Init
    private init() {
        self.setupTextures()
    }
    
    // MARK: - Setup
    private func setupTextures() {
        self.atlas = SKTextureAtlas(named: SpriteNames.Atlas)
    }
    
    // MARK: - Public Functions
    func spriteWithName(name name: String) -> SKSpriteNode {
        let texture = self.atlas.textureNamed(name)
        return SKSpriteNode(texture: texture)
    }
    
    func textureWithName(name name: String) -> SKTexture {
        return self.atlas.textureNamed(name)
    }
}

