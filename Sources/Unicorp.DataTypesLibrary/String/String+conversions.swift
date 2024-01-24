//
//  String+conversions.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension String {

    // -------------------------------------------------------------------------
    // MARK: - Numbers
    // -------------------------------------------------------------------------

    /// Convert current string to an Int value, or returns null if it's not a valid Int
    public var toInt: Int? {
        return Int(self)
    }

    /// Convert current string to a Float value, or returns null if it's not a valid Float.
    public var toFloat: Float? {
        let floatReadable = self.replacingOccurrences(of: ",", with: ".")
        return Float(floatReadable)
    }

    /// Convert current string to a CGFloat value, or returns null if it's not a valid CGFloat
    public var toCGFloat: CGFloat? {
        let formatter = NumberFormatter()
        formatter.decimalSeparator = "."

        guard let number = formatter.number(from: self) else {
            return nil
        }
        return CGFloat(truncating: number)
    }

    // -------------------------------------------------------------------------
    // MARK: - Data
    // -------------------------------------------------------------------------

    /// Convert current string to an URL , or returns null if it's not a valid URL string
    public var toURL: URL? {
        return URL(string: self)
    }
}
