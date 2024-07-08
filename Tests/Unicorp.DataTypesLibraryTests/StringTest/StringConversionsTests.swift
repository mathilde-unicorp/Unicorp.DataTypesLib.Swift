//
//  StringConversionsTests.swift
//  
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import XCTest

final class StringConversionsTests: XCTestCase {

    func testStringToInt() throws {
        XCTAssertEqual("1".toInt, 1)
        XCTAssertEqual("-1".toInt, -1)
        XCTAssertEqual("42".toInt, 42)
        XCTAssertEqual("-42".toInt, -42)
        XCTAssertEqual("2147483649".toInt, 2147483649)
        XCTAssertEqual("-2147483649".toInt, -2147483649)

        XCTAssertEqual("a".toInt, nil)
        XCTAssertEqual("".toInt, nil)
        XCTAssertEqual("1a".toInt, nil)
        XCTAssertEqual("a1".toInt, nil)
        XCTAssertEqual("1.2".toInt, nil)
    }

    func testStringToFloat() throws {
        XCTAssertEqual("1.0".toFloat, 1.0)
        XCTAssertEqual("1,0".toFloat, 1.0)
        XCTAssertEqual("-1.0".toFloat, -1.0)
        XCTAssertEqual("-1,0".toFloat, -1.0)
        
        XCTAssertEqual("42.42".toFloat, 42.42)
        XCTAssertEqual("-42.42".toFloat, -42.42)
        XCTAssertEqual("123456789.123456789".toFloat, 123456789.123456789)

        XCTAssertEqual("a".toFloat, nil)
        XCTAssertEqual("".toFloat, nil)
        XCTAssertEqual("1a".toFloat, nil)
        XCTAssertEqual("a1".toFloat, nil)
        XCTAssertEqual("1.2a".toFloat, nil)
        XCTAssertEqual("1-2".toFloat, nil)
        XCTAssertEqual("1.2.3".toFloat, nil)
    }

    func testStringToUrl() throws {
        XCTAssertNotNil("https://google.com".toURL)
        XCTAssertNotNil("http://www.google.com".toURL)
        XCTAssertNotNil("www.google.com".toURL)
        XCTAssertNotNil("instagram://media?id=123456789".toURL)
        XCTAssertNotNil("spotify:track:123456789".toURL)

        XCTAssertNotNil("google".toURL)
        XCTAssertNotNil("spotify:track".toURL)
        XCTAssertNotNil("www.google com".toURL)
        XCTAssertNotNil("123".toURL)

        XCTAssertNil("".toURL)
    }
}
