import XCTest
@testable import Unicorp_DataTypesLibrary

final class String_occurences_Test: XCTestCase {

  func testItemsCountOccurences() {
    XCTAssertEqual([].itemsOccurenceCount, [:])
    XCTAssertEqual(
      [0, 1, 2, 3, 2].itemsOccurenceCount,
      [0: 1,
       1: 1,
       2: 2,
       3: 1]
    )
  }

  func testStringItemsCountOccurences() {
    XCTAssertEqual("".itemsOccurenceCount, [:])
    XCTAssertEqual("a".itemsOccurenceCount, ["a": 1])
    XCTAssertEqual("aaaaa".itemsOccurenceCount, ["a": 5])
    XCTAssertEqual("abcabc".itemsOccurenceCount, ["a": 2, "b": 2, "c": 2])
  }
}
