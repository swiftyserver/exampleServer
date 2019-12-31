import XCTest

import exampleServerTests

var tests = [XCTestCaseEntry]()
tests += exampleServerTests.allTests()
XCTMain(tests)
