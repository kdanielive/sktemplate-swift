//
//  GameViewController.swift
//  SKTemplate-Swift
//
//  Created by Jeremy Novak on 3/4/16.
//  Copyright (c) 2016 Jeremy Novak. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLayoutSubviews() {

        super.viewDidLayoutSubviews()
        
        if let skView = self.view as? SKView {
            if (skView.scene == nil) {
                if kDebug {
                    skView.showsFPS = true
                    skView.showsPhysics = true
                    skView.showsNodeCount = true
                }
                
                let scene = GameScene(size: kViewSize)
                scene.scaleMode = SKSceneScaleMode.aspectFill
                
                let transition = SKTransition.fade(with: SKColor.black, duration: 0.25)
                
                skView.presentScene(scene, transition: transition)
                
                
                // Preload the music
                OALSimpleAudio.sharedInstance().preloadBg(SoundNames.Music)
                
                // Play the music
                OALSimpleAudio.sharedInstance().playBg(SoundNames.Music, loop: true)
                
                // Set the volume to 50%
                OALSimpleAudio.sharedInstance().bgVolume = 0.5
                
                if kDebug {
                    print("Screen width: \(kViewSize.width), Screen height: \(kViewSize.height)")
                }
            }
        }
    }
    
    
    override var shouldAutorotate : Bool {
        return true
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
