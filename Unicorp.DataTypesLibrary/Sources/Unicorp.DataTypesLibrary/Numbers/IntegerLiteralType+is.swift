import Foundation

extension IntegerLiteralType {
  public var isEven: Bool { self % 2 == 0 }
  public var isOdd: Bool { self % 2 != 0 }
}
