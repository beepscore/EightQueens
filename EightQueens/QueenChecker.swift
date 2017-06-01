//
//  QueenChecker.swift
//  EightQueens
//
//  Created by Steve Baker on 5/21/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

/// Chess has a standard notation for board squares file and rank.
/// Could relate row and column numbers to this via an enum.
/// For ease of programming, just use row and column number 0-7.
class QueenChecker: NSObject {

    /// solutions is a wrapper that presents a facade to call waysToPlaceQueen with correct arguments.
    /// - Parameter boardSize: count of each side of board, boardSize rows x boardSize columns.
    ///   boardSize is 8 for standard chess board
    /// - Returns: array of solutions. Each solution is an array of boardSize queens.
    class func solutions(boardSize: Int) ->  [[Queen]] {
        var results: [[Queen]] = []
        QueenChecker.waysToPlaceQueen(boardSize: boardSize, queens: [], results: &results)
        return results
    }

    /// Called by method solutions()
    /// - Parameter boardSize: count of each side of board, boardSize rows x boardSize columns.
    ///   boardSize is 8 for standard chess board
    /// - Parameter queens: queens already on the board
    ///   Caller supplies []
    /// - Parameter results: inout parameter.
    ///   Caller supplies var results: [[Queen]] = []
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
