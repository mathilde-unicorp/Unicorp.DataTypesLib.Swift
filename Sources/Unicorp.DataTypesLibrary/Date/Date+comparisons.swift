//
//  Date+Comparisons.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Date {

    // MARK: - Overloads

    static func > (rhs: Date, lhs: Date) -> Bool {
        return rhs.compare(lhs) == .orderedDescending
    }

    static func < (rhs: Date, lhs: Date) -> Bool {
        return rhs.compare(lhs) == .orderedAscending
    }

    static func == (rhs: Date, lhs: Date) -> Bool {
        return rhs.compare(lhs) == .orderedSame
    }

    // MARK: - Relations in time

    /// Is the current date in the past (compared to actual date)
    var isOutdated: Bool {
        return Date() > self
    }

    /// Is the current date in the past compared to the given date
    func isBefore(_ date: Date) -> Bool {
        return self < date
    }

    /// Is the current date in the future compared to the given date
    func isAfter(_ date: Date) -> Bool {
        return self > date
    }

    // MARK: - Date distances

    /// Compute distance between two date for a given components
    func distance(
        from date: Date,
        only component: Calendar.Component,
        calendar: Calendar = .current
    ) -> Int {
        let days1 = calendar.component(component, from: self)
        let days2 = calendar.component(component, from: date)
        return days1 - days2
    }

    /// Check if a component value is the same between two dates
    func hasSameDateComponent(
        _ component: Calendar.Component,
        as date: Date
    ) -> Bool {
        distance(from: date, only: component) == 0
    }
}
