//
//  Theme.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import Foundation
import UIKit
class Theme {
    static func errorColor() -> UIColor {
        return UIColor.FlatColor.Red.brightCoral
    }
    
    static func greenColor() -> UIColor {
        return UIColor.FlatColor.Green.mintLight
    }
    static func warningColor() -> UIColor {
        return UIColor.FlatColor.Yellow.sunflowerDark
    }
    static func fontColor() -> UIColor {
        return UIColor(hex: 0x191970)
    }
    static func fontDescColor() -> UIColor {
        return UIColor(hex: 0x191970).withAlphaComponent(0.5)
    }
    // font type and size
    static func fontTitle() -> UIFont {
        return UIFont(name: "Avenir-Medium", size: 25)!
    }
    
    static func fontItem() -> UIFont {
        return UIFont(name: "Avenir-Book", size: 20)!
    }
    
    static func promptFont() -> UIFont {
        return UIFont(name: "Avenir-Book", size: 13)!
    }
    
    static func subItemFont() -> UIFont {
        return UIFont(name: "Avenir-Book", size: 16)!
    }
    
    
}
