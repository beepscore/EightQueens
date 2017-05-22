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

    /// override isEqual enables comparing instances via isEqual, XCTAssertEqual and ==
    /// so it is more general than simply defining func '==' for 2 Square
    override public func isEqual(_ x: Any?) -> Bool {
        guard let x = x as? Square else {
            return false
        }
        let rowEqual = row == x.row
        let columnEqual = column == x.column
        return rowEqual && columnEqual
    }

    /// computed property
    // http://stackoverflow.com/questions/30967182/overriding-description-method-in-nsobject-on-swift
    override public var description: String {
        return "(row: \(row), column: \(column))"
    }
}
