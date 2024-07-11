//
//  Sequence+extensions.swift
//
//
//  Created by Ressier Mathilde on 08/07/2024.
//

import Foundation

extension Sequence {

    /// Filter the array by removing all elements filling the condition
    ///
    /// e.g: ["", "hello", "world"].filterWithout { $0.isEmpty } ---> ["hello", "world"]
    public func filterWithout(_ condition: (Element) -> Bool) -> [Element] {
        return filter { !condition($0) }
    }

    /// Find the first item where the keyPath value match the given `item`
    public func first<Item: Equatable>(
        keyPath: KeyPath<Element, Item>,
        equals item: Item
    ) -> Element? {
        return self.first { $0[keyPath: keyPath] == item }
    }
}

extension Sequence where Element: Equatable {

    /// Returns a Boolean value indicating whether the sequence contains an element that is equal to the `element` parameter.
    public func contains(_ element: Element) -> Bool {
        return self.contains(where: { $0 == element })
    }

    /// Remove duplicated items from the sequence.
    /// The first unique items is keep and the following are ignored.
    public func removedDuplicates() -> [Element] {
        return self.reduce(into: [Element](), { result, item in
            if result.contains(item) { return }

            result.append(item)
        })
    }
}
