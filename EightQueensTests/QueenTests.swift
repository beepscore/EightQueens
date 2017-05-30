//
//  QueenTests.swift
//  EightQueens
//
//  Created by Steve Baker on 5/30/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import EightQueens

class QueenTests: XCTestCase {
    
    func testDoesAttackOnRowTrue() {
        let queen_square = Square(row: 2, column: 4)
        let queen = Queen(square: queen_square)
        XCTAssertTrue(queen.doesAttackOnRow(square: Square(row: 2, column: 7)))
    }

    func testDoesAttackOnRowFalse() {
        let queen_square = Square(row: 2, column: 4)
        let queen = Queen(square: queen_square)
        XCTAssertFalse(queen.doesAttackOnRow(square: Square(row: 3, column: 7)))
    }

}
