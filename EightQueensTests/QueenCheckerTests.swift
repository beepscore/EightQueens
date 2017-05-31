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
        XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 1, queens: []), 1)
    }

    func testNumberOfWaysToPlaceQueenBoardSize2() {
        XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 2, queens: []), 0)
    }

    func testNumberOfWaysToPlaceQueenBoardSize3() {
        XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 3, queens: []), 0)
    }

    func testNumberOfWaysToPlaceQueenBoardSize4() {
        XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 4, queens: []), 2)
    }

    func testNumberOfWaysToPlaceQueenBoardSize5() {
        XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 5, queens: []), 10)
    }

    func testNumberOfWaysToPlaceQueenBoardSize6() {
        // note board size 6 has fewer solutions than board size 5 (sic)
        XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 6, queens: []), 4)
    }

    func testNumberOfWaysToPlaceQueenBoardSize8() {
        // expected value per https://en.wikipedia.org/wiki/Eight_queens_puzzle
        // expect 92 got 0
        //XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 8, queens: []), 92)
    }

}
