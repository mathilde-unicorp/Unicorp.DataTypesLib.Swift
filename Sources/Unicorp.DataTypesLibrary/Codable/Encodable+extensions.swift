//
//  Encodable+extensions.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Encodable {

    /// A computed variable using `JSONSerialization` and `JSONEncoder`
    ///  to encode the Encodable object to a **[String:Any]**.
    func toDictionary(
        encoder: JSONEncoder = JSONEncoder()
    ) throws -> [String: Any] {
        guard let data = try? encoder.encode(self) else { return [:] }
        return (
            try JSONSerialization.jsonObject(with: data, options: .allowFragments)
        ).flatMap { $0 as? [String: Any] } ?? [:]
    }

    /// Convert encodable data to a json string representation
    func toJsonString(
        encoder: JSONEncoder = JSONEncoder(),
        encoding: String.Encoding = .utf8
    ) throws -> String {
        let json = try encoder.encode(self)
        let jsonString = String(data: json, encoding: encoding)

        return jsonString ?? ""
    }
}
