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

    // number of ways to place 8 queens = number of ways to put first * number of ways to put second, 

    /// <#Description#>
    ///
    /// - Parameter queens: queens already on the board
    /// - Returns: number of ways to put a new queen
    class func numberOfWaysToPlaceQueen(queens: [Queen]) -> Int {

        if queens.count == 8 {
            return 1
        }

        var ways = 0

        // TODO: consider start with no queens, set of 64 valid squares
        // for each position of first queen, return valid squares for second queen
        // for each position of first and second queen, return valid squares for third queen
        // for each position of queens 0,1,2, return valid squares for fourth queen


        for row in 0..<7 {
            for column in 0..<7 {

                print("row", row, "column", column)
                
                let currentSquare = Square(row: row, column: column)

                var doesAnyQueenAttack = false
                for queen in queens {
                    if queen.doesAttack(square: currentSquare) {
                        // can't add a new queen here
                        doesAnyQueenAttack = true
                        break
                    }
                }
                if !doesAnyQueenAttack {
                    // found a solution
                    // add new queen, increment ways
                    var queensAppended = queens
                    queensAppended.append(Queen(square: currentSquare))
                    ways += numberOfWaysToPlaceQueen(queens: queensAppended)
                }

            }
        }
        return ways
    }

}
