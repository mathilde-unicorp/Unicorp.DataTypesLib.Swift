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
}

extension Array where Element: Equatable {

    /// Merge two array together without duplicated items
    public func merged(with array: [Element]) -> [Element] {
        return array.reduce(into: self, { result, item in
            if !result.contains(item) {
                result.append(item)
            }
        })
    }

    /// Split an array into an array of array where each piece of the given `size`
    public func chunked(into size: Int) -> [[Element]] {
        guard size != 0 else { return [] }

        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
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
