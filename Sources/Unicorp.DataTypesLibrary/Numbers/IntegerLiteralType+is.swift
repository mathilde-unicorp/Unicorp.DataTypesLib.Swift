import Foundation

extension IntegerLiteralType {

    /// Returns true if the current number is an even number
    public var isEven: Bool { self % 2 == 0 }

    /// Returns true if the current number is an odd number
    public var isOdd: Bool { self % 2 != 0 }
}
