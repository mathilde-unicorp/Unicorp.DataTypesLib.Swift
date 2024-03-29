//
//  Date+timeReferences.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Date {

    // MARK: - Zero Time References

    /// Reset hour, minutes and seconds for the current date
    public var zeroTime: Date {
        return Calendar.current.startOfDay(for: self)
    }

    /// Return current date minus one year, without considering hours and minutes (reset to zero time)
    public var lastYear: Date {
        return Calendar.current.date(byAdding: .year, value: -1, to: zeroTime)!
    }

    /// Return current date minus one day, without considering hours and minutes (reset to zero time)
    public var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: zeroTime)!
    }

    /// Return current date plus one day, without considering hours and minutes (reset to zero time)
    public var tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: zeroTime)!
    }

    // MARK: - Add (or remove) components

    /// Return current date plus a number of years
    public func adding(years: Int) -> Date {
        return Calendar.current.date(byAdding: .year, value: years, to: self)!
    }

    /// Return current date plus a number of months
    public func adding(months: Int) -> Date {
        return Calendar.current.date(byAdding: .month, value: months, to: self)!
    }

    /// Return current date plus a number of days
    public func adding(days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: self)!
    }

    /// Return current date plus a number of hours
    public func adding(hours: Int) -> Date {
        return Calendar.current.date(byAdding: .hour, value: hours, to: self)!
    }

    /// Return current date plus a number of minutes
    public func adding(minutes: Int) -> Date {
        return Calendar.current.date(byAdding: .minute, value: minutes, to: self)!
    }

    /// Return current date plus a number of seconds
    public func adding(seconds: Int) -> Date {
        return Calendar.current.date(byAdding: .second, value: seconds, to: self)!
    }
}
