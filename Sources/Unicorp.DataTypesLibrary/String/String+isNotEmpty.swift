//
//  String+isNotEmpty.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

public protocol StringType {
    var isEmpty: Bool { get }
}

extension String: StringType { }

extension Optional where Wrapped: StringType {
    /// Returns true if the string is null or if its content is empty (= "")
    public var isNullOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}
