//
//  ProgrammingController.swift
//  Connor_CSP
//
//  Created by Oleary, CONNOR on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingController: UIViewController{
    
    override public func viewDidLoad(){
        super.viewDidLoad()
        let gameScene = StartScene(sie: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }
    
}
