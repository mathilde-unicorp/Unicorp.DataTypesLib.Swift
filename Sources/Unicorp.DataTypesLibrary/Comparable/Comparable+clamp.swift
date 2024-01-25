import Foundation

extension Comparable {

    /// Return the value so it cannot be more than the `max` or less than the `min`
    public func clamped(min minimum: Self, max maximum: Self) -> Self {
        var valid = min(self, maximum)
        valid = max(valid, minimum)
        return valid
    }

    /// Change the current value so it's not more than the `max` or less than the `min`
    public mutating func clamp(min minimum: Self, max maximum: Self) {
        self = self.clamped(min: minimum, max: maximum)
    }
}
