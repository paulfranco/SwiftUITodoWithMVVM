//
//  ListTestProjectTests.swift
//  ListTestProjectTests
//
//  Created by Paul Franco on 3/20/21.
//

import XCTest
@testable import ListTestProject

class ListTestProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let manager = ToDoListManager.emptyState()
        
        XCTAssertTrue(manager.items.count == 0, "should start with an empty list of todos")
        
        manager.addItem()
        XCTAssertTrue(manager.items.count == 1, "should have one item")
    }

    

}
