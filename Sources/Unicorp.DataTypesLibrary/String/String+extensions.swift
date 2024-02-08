//
//  String+extensions.swift
//  
//
//  Created by Ressier Mathilde on 08/02/2024.
//

import Foundation

extension String: Identifiable {
    public var id: Int {
        return hashValue
    }
}
