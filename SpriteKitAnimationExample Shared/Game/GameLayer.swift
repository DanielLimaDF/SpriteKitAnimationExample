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
    
    func buildHierarchy(){
        
    }
    
}

extension GameLayer: NodeSetup {
    func configure() {
        square.position = CGPoint(x: size.width/2, y: size.height/2)
    }
    
    func buildViewHierarchy() {
        addChild(square)
    }
    
    func createAndStartAnimations() {
        
        //let topLeftPosition
        //let topRightPosition
        //let bottomRightPosition
        //let bottomLeftPosition
        
        //let goTopLeft
        //let goTopRight
        //let goBottomRight
        //let goBottomLeft
        
    }
}
