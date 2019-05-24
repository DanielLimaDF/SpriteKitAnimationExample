//
//  HotDog.swift
//  SpriteKitAnimationExample iOS
//
//  Created by daniel.da.cunha.lima on 24/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class HotDog: SKSpriteNode {

    var textures: [SKTexture]
    
    init() {
        textures = []
        
        let hotDogTexture = SKTexture(imageNamed: "cq_walk1")
        hotDogTexture.filteringMode = .nearest
        super.init(texture: hotDogTexture, color: SKColor.clear, size: hotDogTexture.size())
        setupNode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HotDog: NodeSetup {
    
    func configure() {
        
    }
    
    func buildViewHierarchy() {
        
    }
    
    func createAndStartAnimations() {
        
        for index in 1...6{
            let texture = SKTexture(imageNamed: "cq_walk\(index)")
            texture.filteringMode = .nearest
            textures.append(texture)
        }
        
        run(SKAction.repeatForever(SKAction.animate(with: textures, timePerFrame: 0.1)))
        
    }
    
}
