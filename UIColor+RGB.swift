//
//  UIColor+RGB.swift
//
//  Created by Mirsat Murutoglu on 9/6/17.
//  Copyright © 2017 Mirsat Murutoglu. All rights reserved.
//

extension UIColor {
    class func initWithRGB(rgb: UInt) -> UIColor {
        return self.initWithRGB(rgb: rgb,alpha:1.0)
    }
    
    class func initWithRGB(rgb: UInt, alpha:CGFloat) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}
