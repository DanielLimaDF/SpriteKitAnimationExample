//
//  GameLayer.swift
//  SpriteKitAnimationExample
//
//  Created by daniel.da.cunha.lima on 23/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class GameLayer: SKNode {
    
    let size: CGSize
    let square: SKSpriteNode
    let hotDog: HotDog
    
    init(sceneSize: CGSize) {
        size = sceneSize
        square = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        hotDog = HotDog()
        super.init()
        setupNode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension GameLayer: NodeSetup {
    func configure() {
        square.position = CGPoint(x: square.size.width/2, y: square.size.height/2)
        hotDog.position = CGPoint(x: size.width/2, y: size.height/2)
        hotDog.setScale(4)
    }
    
    func buildViewHierarchy() {
        addChild(square)
        addChild(hotDog)
    }
    
    func createAndStartAnimations() {
        
        let topLeftPosition = CGPoint(x: square.size.width/2, y: size.height - square.size.height/2)
        let topRightPosition = CGPoint(x: size.width - square.size.width/2, y: size.height - square.size.height/2)
        let bottomRightPosition = CGPoint(x: size.width - square.size.width/2, y: square.size.height/2)
        let bottomLeftPosition = CGPoint(x: square.size.width/2, y: square.size.height/2)
        
        let goTopLeft = SKAction.move(to: topLeftPosition, duration: 1)
        let goTopRight = SKAction.move(to: topRightPosition, duration: 1)
        let goBottomRight = SKAction.move(to: bottomRightPosition, duration: 1)
        let goBottomLeft = SKAction.move(to: bottomLeftPosition, duration: 1)
        
        let sequence = SKAction.sequence([goTopLeft, goTopRight, goBottomRight, goBottomLeft])
        
        let loop = SKAction.repeatForever(sequence)
        
        square.run(loop)
        
    }
}
