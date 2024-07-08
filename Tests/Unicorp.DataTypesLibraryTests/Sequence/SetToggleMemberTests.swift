//
//  SetToggleTests.swift
//  
//
//  Created by Ressier Mathilde on 12/03/2024.
//

import XCTest

final class SetToggleTests: XCTestCase {

    func testSetToggle() throws {
        var mySet: Set<Int> = .init([0, 1, 2])

        mySet.toggle(member: 0)
        XCTAssertEqual(mySet, [1, 2])

        mySet.toggle(member: 0)
        XCTAssertEqual(mySet, [0, 1, 2])
    }

}
