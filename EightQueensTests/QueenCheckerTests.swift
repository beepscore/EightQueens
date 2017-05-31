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
    
    func testNumberOfWaysToPlaceQueenBoardSize1() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 1, queens: [], results: &results)
        XCTAssertEqual(results.count, 1)
    }

    func testNumberOfWaysToPlaceQueenBoardSize2() {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: 2, queens: [], results: &results)
        XCTAssertEqual(results.count, 0)
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
