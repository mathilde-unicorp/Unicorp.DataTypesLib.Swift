//
//  Set+extensions.swift
//
//
//  Created by Ressier Mathilde on 12/03/2024.
//

import Foundation

extension Set {

    /// Toggle a member into the set
    /// If the member is present in the set, remove it
    /// If the member is not in the set, add it to the set
    public mutating func toggle(member: Element) {
        if self.contains(member) {
            self.remove(member)
        } else {
            self.insert(member)
        }
    }
}
