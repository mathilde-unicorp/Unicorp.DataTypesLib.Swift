//
//  IntegerLiteralType+conversions.swift
//
//
//  Created by Ressier Mathilde on 07/02/2024.
//

import Foundation

extension IntegerLiteralType {
    public var toBool: Bool {
        return self != 0
    }
}
