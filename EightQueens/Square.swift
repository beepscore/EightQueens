//
//  Square.swift
//  EightQueens
//
//  Created by Steve Baker on 5/21/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

/// Represents a square on a chess board row 0-7, column 0-7.
/// Hashable so it can be used in a set
/// http://stackoverflow.com/questions/41972319/make-struct-hashable
public class Square: NSObject {
    var row: Int
    var column: Int

    /// Note: Parameter values aren't enforced to be valid
    init(row: Int, column: Int) {
        self.row = row
        self.column = column
    }

    // hashValue does not have to be unique
    override public var hashValue: Int {
        return (8 * row) + column
    }

    /// computed property
    // http://stackoverflow.com/questions/30967182/overriding-description-method-in-nsobject-on-swift
    override public var description: String {
        return "(row: \(row), column: \(column))"
    }

}

/// implement Equatable, outside of class Square
/// - Parameters:
///   - lhs: a Square
///   - rhs: a Square
/// - Returns: true if all properties are equal
public func == (lhs: Square, rhs: Square) -> Bool {
    let rowEqual = lhs.row == rhs.row
    let columnEqual = lhs.column == rhs.column
    return rowEqual && columnEqual
}
