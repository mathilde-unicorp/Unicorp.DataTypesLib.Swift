//
//  ArrayChunkedTests.swift
//  
//
//  Created by Ressier Mathilde on 04/07/2024.
//

import XCTest

final class ArrayChunkedTests: XCTestCase {

    func testChunkedArray_normalUsage() {
        let originalArray = [1, 2, 3, 4, 5, 6]

        XCTAssertEqual(originalArray.chunked(into: 2), [[1, 2], [3, 4], [5, 6]])

        XCTAssertEqual(originalArray.chunked(into: 3), [[1, 2, 3], [4, 5, 6]])

        XCTAssertEqual(originalArray.chunked(into: 4), [[1, 2, 3, 4], [5, 6]])

        XCTAssertEqual(originalArray.chunked(into: 6), [[1, 2, 3, 4, 5, 6]])

        XCTAssertEqual(originalArray.chunked(into: 42), [[1, 2, 3, 4, 5, 6]])
    }

    func testChunkedArray_edgeCases() {
        // Empty array
        XCTAssertEqual([Int]().chunked(into: 3), [])

        // Chunk into 0
        XCTAssertEqual([1].chunked(into: 0), [])
        XCTAssertEqual([1, 2, 3].chunked(into: 0), [])
    }

    func testChunkedArray_reversed() {
        let originalArray = [1, 2, 3, 4, 5, 6]

        XCTAssertEqual(originalArray.chunked(into: -42), [])
        XCTAssertEqual(originalArray.chunked(into: -1), [])
    }
}
