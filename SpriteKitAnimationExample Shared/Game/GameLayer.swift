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
    
    init(sceneSize: CGSize) {
        size = sceneSize
        square = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        super.init()
        setupNode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension GameLayer: NodeSetup {

    func buildViewHierarchy() {
        addChild(square)
    }

    func createAndStartAnimations() {

        //Positions
        let position1 = CGPoint(x: square.size.width/2, y: square.size.height/2)
        let position2 = CGPoint(x: 0, y: 0)
        let position3 = CGPoint(x: 0, y: 0)
        let position4 = CGPoint(x: 0, y: 0)

        //Actions - Move to position

        let moveAction1 = SKAction.move(to: position1, duration: 1)
        let moveAction2 = SKAction.move(to: position2, duration: 1)
        let moveAction3 = SKAction.move(to: position3, duration: 1)
        let moveAction4 = SKAction.move(to: position4, duration: 1)

        //Sequence
        let sequenceAction = SKAction.sequence([moveAction1, moveAction2, moveAction3, moveAction4])

        //Loop
        let repeatForeverAction = SKAction.repeatForever(sequenceAction)

        //Run
        //run(repeatForeverAction)
        
    }
}
