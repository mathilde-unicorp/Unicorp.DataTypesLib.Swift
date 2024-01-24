//
//  File.swift
//  
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Calendar {

    /// Gregorian calendar with GMT timezone
    static var gmt: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = .gmt
        return calendar
    }

    /// Calendar with iso8601 identifier
    static var iso8601: Calendar {
        return Calendar(identifier: .iso8601)
    }
}
