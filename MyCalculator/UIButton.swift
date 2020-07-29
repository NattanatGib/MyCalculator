//
//  UIButton.swift
//  MyCalculator
//
//  Created by gibntn on 23/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
        }
    }
}
