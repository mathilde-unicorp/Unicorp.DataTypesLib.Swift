//
//  IntegerLiteralTypeConversionsTests.swift
//  
//
//  Created by Ressier Mathilde on 07/02/2024.
//

import XCTest

final class IntegerLiteralTypeConversionsTests: XCTestCase {

    func testToBool() throws {
        XCTAssertEqual(0.toBool, false)
        XCTAssertEqual(1.toBool, true)

        XCTAssertEqual((-1).toBool, true)
        XCTAssertEqual(42.toBool, true)
    }
}
