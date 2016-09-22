//
//  GameTextures.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/20/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

import SpriteKit

class GameTextures {
    
    
    static let sharedInstance = GameTextures()
    
    // MARK: - Private class variables
    fileprivate var atlas = SKTextureAtlas()
    
    
    // MARK: - Init
    fileprivate init() {
        self.setupTextures()
    }
    
    // MARK: - Setup
    fileprivate func setupTextures() {
        atlas = SKTextureAtlas(named: SpriteNames.Atlas)
    }
    
    // MARK: - Public Functions
    func spriteWith(name: String) -> SKSpriteNode {
        let texture = atlas.textureNamed(name)
        return SKSpriteNode(texture: texture)
    }
    
    func textureWith(name: String) -> SKTexture {
        return atlas.textureNamed(name)
    }
}

