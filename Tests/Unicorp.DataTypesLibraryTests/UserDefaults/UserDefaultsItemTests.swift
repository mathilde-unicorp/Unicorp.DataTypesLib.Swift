//
//  UserDefaultsPropertyWrapper.swift
//  
//
//  Created by Ressier Mathilde on 08/07/2024.
//

import XCTest
import Unicorp_DataTypesLibrary

final class UserDefaultsItemTests: XCTestCase {

    struct TestSettings {
        @UserDefaultsItem("id", defaultValue: 0)
        var id: Int

        @UserDefaultsItem("name", defaultValue: "")
        var name: String
    }

    // -------------------------------------------------------------------------
    // MARK: - Tests
    // -------------------------------------------------------------------------

    func testUserDefaultsItems() {
        var settings = TestSettings()

        XCTAssertEqual(settings.id, 0)
        XCTAssertEqual(settings.name, "")

        settings.id = 42
        settings.name = "Ecole 42"
        XCTAssertEqual(settings.id, 42)
        XCTAssertEqual(settings.name, "Ecole 42")

        // Reset value
        settings.id = 0
        settings.name = ""
        XCTAssertEqual(settings.id, 0)
        XCTAssertEqual(settings.name, "")
    }
}
