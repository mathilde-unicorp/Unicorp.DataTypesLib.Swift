//
//  Formatter+extensions.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Formatter {

    /// Use Formatter as:
    /// `print(Formatter.yearMonthDayHourMinutes.string(from: date))`

    // MARK: ISO formatters

    /// yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
    public static let iso8601withFractionalSeconds: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return formatter
    }()

    /// yyyy-MM-dd'T'HH:mm:ss'Z'
    public static let iso8601: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        return formatter
    }()

    // MARK: - Full Date Formatters

    /// yyyy-MM-dd HH:mm:ss  (2023-01-01 23:42:02)
    public static let yearMonthDayHourMinutesSeconds: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withSpaceBetweenDateAndTime]
        formatter.formatOptions.remove(.withTimeZone)
        return formatter
    }()

    /// yyyy-MM-dd HH:mm (2023-01-01 23:42)
    public static let yearMonthDayHourMinutes: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = .current
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        return formatter
    }()

    // MARK: - Partial Dates

    /// HH:mm (23:42)
    public static let hourMinutes: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = .current
        formatter.dateFormat = "HH:mm"
        return formatter
    }()

    /// dd/MM (01/01)
    public static let dayMonth: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = .current
        formatter.dateFormat = "dd/MM"
        return formatter
    }()
}
