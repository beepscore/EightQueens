//
//  QueenCheckerTests.swift
//  EightQueensTests
//
//  Created by Steve Baker on 5/21/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import EightQueens

class QueenCheckerTests: XCTestCase {
    
    func testSolutionsBoardSize4() {
        // expected value per https://en.wikipedia.org/wiki/Eight_queens_puzzle
        let actual = QueenChecker.solutions(boardSize: 4)
        XCTAssertEqual(actual.count, 2)
        let expectedDescription = "[[(row: 0, column: 1), (row: 1, column: 3), (row: 2, column: 0), (row: 3, column: 2)], [(row: 0, column: 2), (row: 1, column: 0), (row: 2, column: 3), (row: 3, column: 1)]]"
        XCTAssertEqual(actual.description, expectedDescription)
    }

    func testSolutionsBoardSize8() {
        // expected value per https://en.wikipedia.org/wiki/Eight_queens_puzzle
        let actual = QueenChecker.solutions(boardSize: 8)
        XCTAssertEqual(actual.count, 92)
    }

    func testSolutionsBoardSizeDefault() {
        // expected value per https://en.wikipedia.org/wiki/Eight_queens_puzzle
        let actual = QueenChecker.solutions()
        let expected = QueenChecker.solutions(boardSize: 8)
        XCTAssertEqual(actual.count, expected.count)
    }

    func testNumberOfWaysToPlaceQueenBoardSize1() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 1, queens: [], results: &results)
        XCTAssertEqual(results.count, 1)
        XCTAssertEqual(results.description, "[[(row: 0, column: 0)]]")
    }

    func testNumberOfWaysToPlaceQueenBoardSize2() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 2, queens: [], results: &results)
        XCTAssertEqual(results.count, 0)
        XCTAssertEqual(results.description, "[]")
    }

    func testNumberOfWaysToPlaceQueenBoardSize3() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 3, queens: [], results: &results)
        XCTAssertEqual(results.count, 0)
    }

    func testNumberOfWaysToPlaceQueenBoardSize4() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 4, queens: [], results: &results)
        XCTAssertEqual(results.count, 2)
        let expectedDescription = "[[(row: 0, column: 1), (row: 1, column: 3), (row: 2, column: 0), (row: 3, column: 2)], [(row: 0, column: 2), (row: 1, column: 0), (row: 2, column: 3), (row: 3, column: 1)]]"
        XCTAssertEqual(results.description, expectedDescription)
    }

    func testNumberOfWaysToPlaceQueenBoardSize5() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 5, queens: [], results: &results)
        XCTAssertEqual(results.count, 10)
    }

    func testNumberOfWaysToPlaceQueenBoardSize6() {
        // note board size 6 has fewer solutions than board size 5 (sic)
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 6, queens: [], results: &results)
        XCTAssertEqual(results.count, 4)
    }

    func testNumberOfWaysToPlaceQueenBoardSize7() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 7, queens: [], results: &results)
        XCTAssertEqual(results.count, 40)
    }

    func testNumberOfWaysToPlaceQueenBoardSize8() {
        // expected value per https://en.wikipedia.org/wiki/Eight_queens_puzzle
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 8, queens: [], results: &results)
        XCTAssertEqual(results.count, 92)
    }

}
