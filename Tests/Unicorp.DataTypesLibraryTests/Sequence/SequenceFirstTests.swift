//
//  SequenceFirstTests.swift
//  
//
//  Created by Ressier Mathilde on 08/07/2024.
//

import XCTest

final class SequenceFirstTests: XCTestCase {

    private struct Test {
        let id: Int
        let name: String
    }

    private let arrayTest = Array(0...5).map { index in
        Test(id: index, name: "Test \(index)")
    }

    // -------------------------------------------------------------------------
    // MARK: - Tests
    // -------------------------------------------------------------------------

    func testFirstKeyPath_byName() {
        let nameTest = "Test 3"
        let item = arrayTest.first(keyPath: \.name, equals: nameTest)

        XCTAssertNotNil(item)
        XCTAssertEqual(item?.name, nameTest)
    }

    func testFirstKeyPath_byId() {
        let idTest = 4
        let item = arrayTest.first(keyPath: \.id, equals: idTest)

        XCTAssertNotNil(item)
        XCTAssertEqual(item?.id, idTest)
    }

    func testFirstKeyPath_noResult() {
        let nameTest = "Test 10"
        let item = arrayTest.first(keyPath: \.name, equals: nameTest)

        XCTAssertNil(item)
    }
}
