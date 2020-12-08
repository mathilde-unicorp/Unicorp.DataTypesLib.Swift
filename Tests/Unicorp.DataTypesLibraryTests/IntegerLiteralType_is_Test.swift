import XCTest
@testable import Unicorp_DataTypesLibrary

final class IntegerLiteralType_is_Test: XCTestCase {

  func testIsOdd() {
    XCTAssertEqual(1.isOdd, true)
    XCTAssertEqual((-1).isOdd, true)
    XCTAssertEqual((-43).isOdd, true)
    XCTAssertEqual(43.isOdd, true)

    XCTAssertEqual(0.isOdd, false)
    XCTAssertEqual(42.isOdd, false)
  }

  func testIsEven() {
    XCTAssertEqual(0.isEven, true)
    XCTAssertEqual(42.isEven, true)
    XCTAssertEqual((-2).isEven, true)

    XCTAssertEqual(43.isEven, false)
    XCTAssertEqual((-1).isEven, false)
  }

}
