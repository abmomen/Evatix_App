//
//  UIColor+Addition.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 07/02/2021.
//

import UIKit

extension UIColor {
    convenience init(redInt: Int, greenInt: Int, blueInt: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat(redInt) / 255.0,
            green: CGFloat(greenInt) / 255.0,
            blue: CGFloat(blueInt) / 255.0,
            alpha: alpha
        )
    }
    
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(
            redInt: (hex >> 16) & 0xFF,
            greenInt: (hex >> 8) & 0xFF,
            blueInt: hex & 0xFF,
            alpha: alpha
        )
    }
    
    static var skyBlue: UIColor {
        return UIColor(hex: 0x42aafd)
    }
    
    static var slightGreen:UIColor {
        return UIColor(hex: 0x01bacc)
    }
    
    static var lightPinck:UIColor {
        return UIColor(hex: 0xcd42fd)
    }
    
    static var pinck:UIColor {
        return UIColor(hex: 0x8539f9)
    }
    
    static var redish:UIColor {
        return UIColor(hex: 0xee2375)
    }
    
}
