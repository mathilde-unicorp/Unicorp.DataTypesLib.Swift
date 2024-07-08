//
//  UserDefaults+extensions.swift
//
//
//  Created by Ressier Mathilde on 08/07/2024.
//

import Foundation

/// UserDefaults properties, easy to access and safe
@propertyWrapper
public struct UserDefaultsItem<T> {
    /// Unique key to store the value
    let key: String
    /// Default value of the key, if the key doesn't exist
    let defaultValue: T

    let instance: UserDefaults

    public init(_ key: String, defaultValue: T, instance: UserDefaults = .standard) {
        self.key = key
        self.defaultValue = defaultValue
        self.instance = instance
    }

    public var wrappedValue: T {
        get {
            instance.object(forKey: key) as? T ?? defaultValue
        }
        set {
            instance.set(newValue, forKey: key)
        }
    }
}

