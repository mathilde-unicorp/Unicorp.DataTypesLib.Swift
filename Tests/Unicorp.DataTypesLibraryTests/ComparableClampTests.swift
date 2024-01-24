import XCTest
@testable import Unicorp_DataTypesLibrary

final class ComparableClampTests: XCTestCase {

  func testClamped() {
    XCTAssertEqual(3.clamped(min: 0, max: 10), 3)
    XCTAssertEqual(11.clamped(min: 0, max: 10), 10)
    XCTAssertEqual((-1).clamped(min: 0, max: 10), 0)
    XCTAssertEqual(3.clamped(min: 10, max: 20), 10)

    XCTAssertEqual(
      Character("C").clamped(min: Character("A"), max: Character("Z")),
      Character("C")
    )

    XCTAssertEqual(
      Character("Z").clamped(min: Character("A"), max: Character("D")),
      Character("D")
    )
  }

  func testClamp() {
    var test = 3
    test.clamp(min: 0, max: 10)
    XCTAssertEqual(test, 3)

    test = 11
    test.clamp(min: 0, max: 10)
    XCTAssertEqual(test, 10)

    test = -1
    test.clamp(min: 0, max: 10)
    XCTAssertEqual(test, 0)

    test = 3
    test.clamp(min: 10, max: 20)
    XCTAssertEqual(test, 10)
  }
}
