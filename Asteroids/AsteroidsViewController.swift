//
//  AsteroidsViewController.swift
//  Asteroids
//
//  Created by H Hugo Falkman on 2017-04-10.
//  Copyright © 2017 H Hugo Falkman. All rights reserved.
//

import UIKit

class AsteroidsViewController: UIViewController {
    
    
    
    
    // MARK: Constants
    
    private struct Constants {
        static let initialAsteroidCount = 20
        static let shipBoundaryName = "Ship"
        static let shipSizeToMinBoundsEdgeRatio: CGFloat = 1/5
        static let asteroidFieldMagnitude: CGFloat = 10             // as a multiple of view.bounds.size
        static let normalizedDistanceOfShipFromEdge: CGFloat = 0.2
        static let burnAcceleration: CGFloat = 0.07                 // points/s/s
        struct Shield {
            static let duration: TimeInterval = 1.0       // how long shield stays up
            static let updateInterval: TimeInterval = 0.2 // how often we update shield level
            static let regenerationRate: Double = 5       // per second
            static let activationCost: Double = 15        // per activation
            static var regenerationPerUpdate: Double
            { return Constants.Shield.regenerationRate * Constants.Shield.updateInterval }
            static var activationCostPerUpdate: Double
            { return Constants.Shield.activationCost / (Constants.Shield.duration/Constants.Shield.updateInterval) }
        }
        static let defaultShipDirection: [UIInterfaceOrientation:CGFloat] = [
            .portrait : CGFloat.up,
            .portraitUpsideDown : CGFloat.down,
            .landscapeLeft : CGFloat.right,
            .landscapeRight : CGFloat.left
        ]
        static let normalizedAsteroidFieldCenter: [UIInterfaceOrientation:CGPoint] = [
            .portrait : CGPoint(x: 0.5, y: 1.0-Constants.normalizedDistanceOfShipFromEdge),
            .portraitUpsideDown : CGPoint(x: 0.5, y: Constants.normalizedDistanceOfShipFromEdge),
            .landscapeLeft : CGPoint(x: Constants.normalizedDistanceOfShipFromEdge, y: 0.5),
            .landscapeRight : CGPoint(x: 1.0-Constants.normalizedDistanceOfShipFromEdge, y: 0.5),
            .unknown : CGPoint(x: 0.5, y: 0.5)
        ]
    }
}

