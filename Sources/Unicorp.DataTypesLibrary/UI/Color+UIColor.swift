//
//  Color+UIColor.swift
//
//
//  Created by Ressier Mathilde on 07/02/2024.
//

import Foundation
import SwiftUI
import UIKit


extension Color {

    // MARK: - UIKit

    /// Convert a SwiftUI `Color` to a `UIColor`
    public var uiColor: UIColor {
        return UIColor(self)
    }
}

extension Color {

    // -------------------------------------------------------------------------
    // MARK: - UIColors
    // -------------------------------------------------------------------------

    // Link between UIColor and SwiftUI colors
    // List from https://developer.apple.com/documentation/uikit/uicolor/ui_element_colors

    // MARK: Label

    /// The color for text labels that contain primary content.
    public static let label = UIColor.label.swiftUiColor
    /// The color for text labels that contain secondary content.
    public static let secondaryLabel = UIColor.secondaryLabel.swiftUiColor
    /// The color for text labels that contain tertiary content.
    public static let tertiaryLabel = UIColor.tertiaryLabel.swiftUiColor
    /// The color for text labels that contain quaternary content.
    public static let quaternaryLabel = UIColor.quaternaryLabel.swiftUiColor

    // MARK: Fill

    /// An overlay fill color for thin and small shapes.
    public static let systemFill = UIColor.systemFill.swiftUiColor
    /// An overlay fill color for medium-size shapes.
    public static let secondarySystemFill = UIColor.secondarySystemFill.swiftUiColor
    /// An overlay fill color for large shapes.
    public static let tertiarySystemFill = UIColor.tertiarySystemFill.swiftUiColor
    /// An overlay fill color for large areas that contain complex content.
    public static let quaternarySystemFill = UIColor.quaternarySystemFill.swiftUiColor

    // MARK: Text

    /// The color for placeholder text in controls or text views.
    public static let placeholderText = UIColor.placeholderText.swiftUiColor

    // MARK:  Tint

    /// A color value that resolves at runtime based on the current tint color of the app or trait hierarchy.
    public static let tintColor = UIColor.tintColor.swiftUiColor

    // MARK: Background

    /// The color for the main background of your interface.
    public static let systemBackground = UIColor.systemBackground.swiftUiColor
    /// The color for content layered on top of the main background.
    public static let secondarySystemBackground = UIColor.secondarySystemBackground.swiftUiColor
    /// The color for content layered on top of secondary backgrounds.
    public static let tertiarySystemBackground = UIColor.tertiarySystemBackground.swiftUiColor

    /// The color for the main background of your grouped interface.
    public static let systemGroupedBackground = UIColor.systemGroupedBackground.swiftUiColor
    /// The color for content layered on top of the main background of your grouped interface.
    public static let secondarySystemGroupedBackground = UIColor.secondarySystemGroupedBackground.swiftUiColor
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    public static let tertiarySystemGroupedBackground = UIColor.tertiarySystemGroupedBackground.swiftUiColor
    
    // MARK: Separator

    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    public static let separator = UIColor.separator.swiftUiColor
    /// The color for borders or divider lines that hides any underlying content.
    public static let opaqueSeparator = UIColor.opaqueSeparator.swiftUiColor
    /// The specified color for links.
    public static let link = UIColor.link.swiftUiColor

    // MARK: Non adaptable colors

    /// The nonadaptable system color for text on a light background.
    public static let darkText = UIColor.darkText.swiftUiColor
    /// The nonadaptable system color for text on a dark background.
    public static let lightText = UIColor.lightText.swiftUiColor



}
