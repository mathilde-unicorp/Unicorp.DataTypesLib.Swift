import XCTest
@testable import Unicorp_DataTypesLibrary

final class String_regex_Test: XCTestCase {

  func testMatches() {
    XCTAssertEqual(try "hello world".matches(regex: "hello"), ["hello"])
    XCTAssertEqual(try "hello world".matches(regex: "o"), ["o", "o"])
    XCTAssertEqual(try "hello world".matches(regex: "(o)"), ["o", "o"])
    XCTAssertEqual(try "hello world".matches(regex: "\\w+(o)"), ["hello", "wo"])
    XCTAssertEqual(try "hello world".matches(regex: "toto"), [])
    XCTAssertEqual(try "".matches(regex: "toto"), [])

    XCTAssertThrowsError(try "hello [world]".matches(regex: "["))
  }

  func testSubstringMatches() {
    XCTAssertEqual(try "hello world".substringMatches(regex: "hello"), [["hello"]])
    XCTAssertEqual(try "hello world".substringMatches(regex: "o"), [["o"], ["o"]])
    XCTAssertEqual(try "hello world".substringMatches(regex: "(o)"), [["o", "o"], ["o", "o"]])
    XCTAssertEqual(try "hello world".substringMatches(regex: "\\w+(o)"),
                   [["hello", "o"], ["wo", "o"]])
    XCTAssertEqual(try "hello world".substringMatches(regex: "(\\w+)(o)"),
                   [["hello", "hell", "o"], ["wo", "w", "o"]])

    XCTAssertEqual(try "hello world".substringMatches(regex: "toto"), [])
    XCTAssertEqual(try "".substringMatches(regex: "toto"), [])

    XCTAssertThrowsError(try "hello [world]".substringMatches(regex: "["))
  }

  func testFirstMatch() {
    XCTAssertEqual(try "hello world".firstMatch(regex: "\\w+o"), "hello")
    XCTAssertEqual(try "hello world".firstMatch(regex: "\\w{1}o"), "lo")
    XCTAssertEqual(try "hello world".firstMatch(regex: "\\w{1}o"), "lo")
    XCTAssertEqual(try "hello world".firstMatch(regex: "test"), nil)
    XCTAssertEqual(try "hello world".firstMatch(regex: "\\w+z"), nil)

    XCTAssertThrowsError(try "hello [world]".firstMatch(regex: "["))
  }

  func testContains() {
    XCTAssertEqual(try "hello world".contains(regex: "hello"), true)
    XCTAssertEqual(try "hello world".contains(regex: "\\w+o"), true)

    XCTAssertEqual(try "hello world".contains(regex: "\\w+z"), false)
    XCTAssertEqual(try "hello world".contains(regex: "test"), false)
  }
}
