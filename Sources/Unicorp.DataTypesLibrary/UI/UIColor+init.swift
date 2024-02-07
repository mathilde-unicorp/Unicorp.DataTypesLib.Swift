//
//  UIColor+init.swift
//  
//
//  Created by Ressier Mathilde on 07/02/2024.
//

import Foundation
import UIKit

extension UIColor {

    public convenience init(redI: Int, greenI: Int, blueI: Int, alphaI: Int) {
        let currRed = (redI > 0) ? (CGFloat(redI) / 255) : 0.0
        let currGreen = (greenI > 0) ? (CGFloat(greenI) / 255) : 0.0
        let currBlue = (blueI > 0) ? (CGFloat(blueI) / 255) : 0.0
        let currAlpha = (alphaI > 0) ? (CGFloat(alphaI) / 100) : 0.0

        self.init(red: currRed, green: currGreen, blue: currBlue, alpha: currAlpha)
    }

    public convenience init(hex: String) {
        let red, green, blue, alpha: CGFloat

        let hex = hex.uppercased()

        let start = hex.hasPrefix("#") ?
        hex.index(hex.startIndex, offsetBy: 1) : hex.startIndex
        let hexColor = String(hex[start...])

        if hexColor.count == 8 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0

            if scanner.scanHexInt64(&hexNumber) {
                red = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                green = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                blue = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                alpha = CGFloat(hexNumber & 0x000000ff) / 255

                self.init(red: red, green: green, blue: blue, alpha: alpha)
                return
            }
        } else {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0

            if scanner.scanHexInt64(&hexNumber) {
                red = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                green = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                blue = CGFloat(hexNumber & 0x0000ff) / 255

                self.init(red: red, green: green, blue: blue, alpha: 1.0)
                return
            }
        }

        self.init(cgColor: UIColor.black.cgColor)
    }
}
