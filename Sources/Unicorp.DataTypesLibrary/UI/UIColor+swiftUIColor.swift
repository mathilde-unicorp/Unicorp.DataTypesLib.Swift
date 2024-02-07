//
//  UIColor+UIColor+swiftUIColor.swift
//
//
//  Created by Ressier Mathilde on 07/02/2024.
//

import Foundation
import UIKit
import SwiftUI


extension UIColor {
    /// Convert a `UIColor` to a SwiftUI `Color`
    public var swiftUiColor: Color {
        return Color(self)
    }
}
