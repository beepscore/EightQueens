//
//  QueenChecker.swift
//  EightQueens
//
//  Created by Steve Baker on 5/21/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class QueenChecker: NSObject {

    /*
     Chess has a standard notation for board squares.
     Could relate row and column numbers to this via an enum.
     For ease of programming, just use row and column number 0-7.

 */

    class func foo() -> Bool {
        return true
    }

    class func queenSeesSquare(queenRow: Int, queenColumn: Int, row: Int, column: Int) -> Bool {
        return false
    }

    class func squaresShareADiagonal(aSquare: Square, bSquare: Square) -> Bool {
        // move 45 degrees from a to edge of board
        // if don't hit b then return false
        return true
    }

}
