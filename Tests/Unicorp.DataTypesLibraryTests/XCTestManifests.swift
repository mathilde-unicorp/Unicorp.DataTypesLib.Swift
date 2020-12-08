import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Unicorp_DataTypesLibraryTests.allTests),
    ]
}
#endif
