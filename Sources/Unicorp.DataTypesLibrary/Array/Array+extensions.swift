//
//  Array+extensions.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation


extension Array {

    /// Returns true if the array contains at least one element
    public var isNotEmpty: Bool {
        return !isEmpty
    }

    // -------------------------------------------------------------------------
    // MARK: - Filters
    // -------------------------------------------------------------------------

    /// Filter the array by removing all elements filling the condition
    ///
    /// e.g: ["", "hello", "world"].filterWithout { $0.isEmpty } ---> ["hello", "world"]
    public func filterWithout(_ condition: (Element) -> Bool) -> [Element] {
        return filter { !condition($0) }
    }
}

extension Array where Element: Equatable {
    /// Returns a Boolean value indicating whether the sequence contains an element that is equal to the `element` parameter.
    public func contains(_ element: Element) -> Bool {
        return self.contains(where: { $0 == element })
    }

    /// Merge two array together without duplicated items
    public func merge(with array: [Element]) -> [Element] {
        return array.reduce(into: self, { result, item in
            if !result.contains(item) {
                result.append(item)
            }
        })
    }

    // -------------------------------------------------------------------------
    // MARK: - Mutating methods
    // -------------------------------------------------------------------------

    /// Toggle a member into the list
    /// If the member is present in the list, remove it
    /// If the member is not in the list, add it
    public mutating func toggle(element: Element) {
        if self.contains(where: { $0 == element }) {
            self.removeAll(where: { $0 == element })
        } else {
            self.append(element)
        }
    }

}
