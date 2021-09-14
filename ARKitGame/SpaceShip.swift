//
//  SpaceShip.swift
//  ARKitGame
//
//  Created by Nipun David on 14/09/21.
//

import UIKit
import ARKit

class SpaceShip: SCNNode {
    
    func loadModal() {
        guard let vObj = SCNScene(named: "ship.scn") else {
            print("Unable to load model")
            return
        }
        let wrapperNode = SCNNode()
        
        for child in vObj.rootNode.childNodes{
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
    }
}
