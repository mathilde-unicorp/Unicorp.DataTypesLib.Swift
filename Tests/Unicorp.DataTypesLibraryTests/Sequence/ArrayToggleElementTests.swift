//
//  ArrayToggleMemberTests.swift
//  
//
//  Created by Ressier Mathilde on 26/06/2024.
//

import XCTest

final class ArrayToggleMemberTests: XCTestCase {

    func testArrayToggleElement() throws {
        var array: [Int] = [0, 1, 2]

        array.toggle(element: 0)
        XCTAssertEqual(array, [1, 2])

        array.toggle(element: 0)
        XCTAssertEqual(array, [1, 2, 0])
    }

    func testArrayToggleElement_multipleOccurrences() throws {
        var array: [Int] = [0, 1, 2]

        array.toggle(element: 0)
        XCTAssertEqual(array, [1, 2])

        array.append(0)
        array.append(0)
        XCTAssertEqual(array, [1, 2, 0, 0])


        array.toggle(element: 0)
        XCTAssertEqual(array, [1, 2])
    }

    func testArrayToggleElement_emptyArray() throws {
        var array: [Int] = []

        array.toggle(element: 0)
        XCTAssertEqual(array, [0])

        array.toggle(element: 0)
        XCTAssertEqual(array, [])
    }

}
