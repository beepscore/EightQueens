//
//  Queen.swift
//  EightQueens
//
//  Created by Steve Baker on 5/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class Queen: NSObject {

    // square this piece is on
    var square: Square

    /// Note: Parameter values aren't enforced to be valid
    /// - Parameter square: square to put piece on
    init(square: Square) {
        self.square = square
    }

    /// - Parameter square: square to check
    /// - Returns: true if queen attacks square, returns false otherwise
    func doesAttack(square: Square) -> Bool {
        let attacks = (doesAttackOnRow(square: square)
        || doesAttackOnColumn(square: square)
        || doesAttackOnDiagonalPositive(square: square)
        || doesAttackOnDiagonalNegative(square: square))
        return attacks
    }

    /// returns true if queen attacks via its row
    /// returns false otherwise
    func doesAttackOnRow(square: Square) -> Bool {
        return self.square.row == square.row
    }

    /// returns true if queen attacks via its column
    /// returns false otherwise
    func doesAttackOnColumn(square: Square) -> Bool {
        return self.square.column == square.column
    }

    /// - Parameter square: square to check
    /// - Returns: true if queen attacks via a diagonal with positive slope
    /// returns false otherwise
    func doesAttackOnDiagonalPositive(square: Square) -> Bool {
        // FIXME:
        return false
    }

    /// - Parameter square: square to check
    /// - Returns: true if queen attacks via a diagonal with negative slope
    /// returns false otherwise
    func doesAttackOnDiagonalNegative(square: Square) -> Bool {
        // FIXME:
        return false
    }

}
