//
//  Decodable+extensions.swift
//  
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Decodable {
    func decode<T>(_ type: T.Type, from dictionary: [String: Any]) -> T? where T: Decodable {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: .fragmentsAllowed)
            return try JSONDecoder().decode(type, from: data)
        } catch {
            log.error("Decode error: \(error)")
            return nil
        }
    }

    func decode<T>(from dictionary: [String: Any]) -> T? where T: Decodable {
        return decode(T.self, from: dictionary)
    }
}
