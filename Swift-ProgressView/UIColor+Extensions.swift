//
//  UIColor+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 8/30/14.
//  Copyright (c) 2014 Isuru Nanayakkara. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(hex: UInt32, alpha: CGFloat) {
        let red = CGFloat((hex & 0xFF0000) >> 16)/256.0
        let green = CGFloat((hex & 0xFF00) >> 8)/256.0
        let blue = CGFloat(hex & 0xFF)/256.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}