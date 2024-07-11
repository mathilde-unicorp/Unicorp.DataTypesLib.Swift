//
//  SequenceRemovedDuplicates.swift
//  
//
//  Created by Ressier Mathilde on 11/07/2024.
//

import XCTest

final class SequenceRemovedDuplicates: XCTestCase {

    func testRemovedDuplicates() {
        XCTAssertEqual(
            [1, 2, 3, 2].removedDuplicates(),
            [1, 2, 3]
        )

        XCTAssertEqual(
            [1, 2, 3, 2, 3].removedDuplicates(),
            [1, 2, 3]
        )

        XCTAssertEqual(
            [1, 1].removedDuplicates(),
            [1]
        )

        XCTAssertEqual(
            [1].removedDuplicates(),
            [1]
        )

        XCTAssertEqual(
            [-1, 1].removedDuplicates(),
            [-1, 1]
        )

        XCTAssertEqual(
            ["hello", "world", "hello"].removedDuplicates(),
            ["hello", "world"]
        )

        XCTAssertEqual(
            [Int]().removedDuplicates(),
            []
        )

    }
}
