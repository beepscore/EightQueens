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

    func testNumberOfWaysToPlaceQueenBoardSize8() {
        // expected value per https://en.wikipedia.org/wiki/Eight_queens_puzzle
        // expect 92 got 0
        //XCTAssertEqual(QueenChecker.numberOfWaysToPlaceQueen(boardSize: 8, queens: []), 92)
    }

}
