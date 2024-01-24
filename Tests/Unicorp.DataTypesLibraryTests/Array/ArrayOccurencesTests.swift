import XCTest
@testable import Unicorp_DataTypesLibrary

final class ArrayOccurencesTest: XCTestCase {

  func testItemsCountOccurences_IntArray() {
    XCTAssertEqual([].itemsOccurencesCount, [:])
    XCTAssertEqual(
      [0, 1, 2, 3, 2].itemsOccurencesCount,
      [0: 1,
       1: 1,
       2: 2,
       3: 1]
    )
  }

  func testItemsCountOccurences_String() {
    XCTAssertEqual("".itemsOccurencesCount, [:])
    XCTAssertEqual("a".itemsOccurencesCount, ["a": 1])
    XCTAssertEqual("aaaaa".itemsOccurencesCount, ["a": 5])
    XCTAssertEqual("abcabc".itemsOccurencesCount, ["a": 2, "b": 2, "c": 2])
  }
}
