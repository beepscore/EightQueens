//
//  QueenChecker.swift
//  EightQueens
//
//  Created by Steve Baker on 5/21/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class QueenChecker: NSObject {

    /// Chess has a standard notation for board squares file and rank.
    /// Could relate row and column numbers to this via an enum.
    /// For ease of programming, just use row and column number 0-7.

    /// - Parameter boardSize: board is square boardSize rows x boardSize columns
    ///   boardSize is 8 for standard chess board
    /// - Parameter queens: queens already on the board
    /// - Parameter results: inout parameter.
    ///   Caller supplies var results: [[Queen]] = [] (for example usage see tests)
    ///   After method returns, results contains the ways.
    class func waysToPlaceQueen(boardSize: Int, queens: [Queen], results: inout [[Queen]]) {

        if queens.count == boardSize {
            results.append(queens)
            return
        }

        // Each queen must be on a different row.
        // Eliminate unnecessary iterations by adding each queen on next row
        let row = queens.count

        // in row, for every valid column, add ways
        for column in 0..<boardSize {

            let currentSquare = Square(row: row, column: column)
            let isSquareOpen = !QueenChecker.doesAnyQueenAttack(queens: queens, square: currentSquare)

            if isSquareOpen {
                // add queen, recursively call waysToPlaceQueen
                var queensAppended = queens
                queensAppended.append(Queen(square: currentSquare))
                waysToPlaceQueen(boardSize: boardSize, queens: queensAppended, results: &results)
            }
        }
    }

    class func doesAnyQueenAttack(queens: [Queen], square: Square) -> Bool {
        for queen in queens {
            if queen.doesAttack(square: square) {
                return true
            }
        }
        return false
    }

}
