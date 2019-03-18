//
//  UIButtonExtension.swift
//  DigiMatch
//
//  Created by Tim Tan on 11/4/18.
//  Copyright © 2018 Tim Tan. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.4
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.3
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
}
