//
//  ArrayMergeTests.swift
//  
//
//  Created by Ressier Mathilde on 26/06/2024.
//

import XCTest

final class ArrayMergeTests: XCTestCase {

    func testArrayMerge() {
        let array1 = [1, 2]
        let array2 = [3, 4]

        let mergedArray = array1.merged(with: array2)

        XCTAssertEqual(mergedArray, [1, 2, 3, 4])

        // Check that original arrays are not modified
        XCTAssertEqual(array1, [1, 2])
        XCTAssertEqual(array2, [3, 4])
    }

    func testArrayMerge_withDuplicatedItems() {
        let array1 = [1, 2]
        let array2 = [2, 3, 4]

        let mergedArray = array1.merged(with: array2)

        XCTAssertEqual(mergedArray, [1, 2, 3, 4])
    }

    func testArrayMerge_emptyArray() {
        let array1: [Int] = []
        let array2 = [3, 4]

        let mergedArray = array1.merged(with: array2)

        XCTAssertEqual(mergedArray, [3, 4])
    }

    func testArrayMerge_emptyArrays() {
        let array1: [Int] = []
        let array2: [Int] = []

        let mergedArray = array1.merged(with: array2)

        XCTAssertEqual(mergedArray, [])
    }
}
