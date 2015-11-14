//
//  Accumulator.swift
//  Library
//
//  Created by Andrew Breckenridge on 11/8/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation

public extension lib {
    public func accumulator(initial: Int = -1, incrementBy: Int = 1) -> () -> Int {
        var value = initial
        func accum() -> Int {
            value += incrementBy
            return value
        }
        return accum
    }
}