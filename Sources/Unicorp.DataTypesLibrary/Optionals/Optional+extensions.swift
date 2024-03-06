//
//  Optional+extensions.swift
//
//
//  Created by Ressier Mathilde on 06/03/2024.
//

import Foundation

extension Optional {

    /// Implementation of the `optional.let { ... }` from Kotlin
    ///
    /// Instead of doing this long and suffering kind of conditions:
    /// ```
    /// var myValue: Float
    /// if let stringValue = optionalStringValue {
    ///     myValue = Float(stringValue)
    /// } else {
    ///     myValue = 0.0
    /// }
    /// ```
    ///
    /// Just need to do:
    /// ```
    /// let myValue = optionalStringValue.let { Float($0) } ?? 0.0
    /// ```
    ///
    public func `let`<NewWrapped>(completion: @escaping (_ value: Wrapped) -> NewWrapped) -> NewWrapped? {
        switch self {
        case .none:
            return nil
        case .some(let value):
            return completion(value)
        }
    }
}
