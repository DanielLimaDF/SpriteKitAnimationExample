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
    //let hotDog: HotDog
    
    init(sceneSize: CGSize) {
        size = sceneSize
        square = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        //hotDog = HotDog()
        super.init()
        setupNode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension GameLayer: NodeSetup {
    func configure() {
        //square.position =
        //hotDog.position = CGPoint(x: size.width/2, y: size.height/2)
        //hotDog.setScale(4)
    }
    
    func buildViewHierarchy() {
        addChild(square)
        //addChild(hotDog)
    }
    
    func createAndStartAnimations() {

        //Positions


        //Actions - Move to position


        //Sequence


        //Loop


        //Run

        
    }
}
