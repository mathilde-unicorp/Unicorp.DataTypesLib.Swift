//
//  Data+extensions.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Data {

    /// Return a readable string of a json data object
    var jsonPrettyPrintDescription: String? {
        if let object = try? JSONSerialization.jsonObject(with: self, options: []),
           let data2 = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]) {
            let prettyPrintedString = NSString(data: data2, encoding: String.Encoding.utf8.rawValue)
            return String(describing: prettyPrintedString)
        }
        return nil
    }

    /// Decode an object to a `Decodable` object
    func decode<T: Decodable>(
        decoder: JSONDecoder = JSONDecoder()
    ) throws -> T {
        do {
            let object = try decoder.decode(T.self, from: self)
            return object
        } catch {
            throw error
        }
    }
}
