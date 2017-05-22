//
//  SquareTests.swift
//  EightQueens
//
//  Created by Steve Baker on 5/21/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import EightQueens

class SquareTests: XCTestCase {

    func testSquare() {
        let square = Square(row: 2, column: 5)
        XCTAssertEqual(square.row, 2)
        XCTAssertEqual(square.column, 5)
    }

    func testSquareDescription() {
        let square = Square(row: 0, column: 7)
        let expectedDescription = "(row: 0, column: 7)"
        XCTAssertEqual(square.description, expectedDescription)
    }

    func testSquareEqual() {
        let square0 = Square(row: 2, column: 5)
        let square1 = Square(row: 2, column: 5)
        // when comparing squares, need to use == operator, not XCTAssertEqual
        XCTAssertTrue(square1 == square0)
    }

    func testSquareNotEqualColumn() {
        let square0 = Square(row: 2, column: 5)
        let square1 = Square(row: 2, column: 4)
        XCTAssertFalse(square1 == square0)
    }

    func testSquareNotEqualRow() {
        let square0 = Square(row: 6, column: 5)
        let square1 = Square(row: 2, column: 5)
        XCTAssertFalse(square1 == square0)
    }

}
