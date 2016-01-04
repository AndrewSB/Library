//
//  Accumulator.swift
//  Library
//
//  Created by Andrew Breckenridge on 11/8/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation
import Library

public func accumulator(initial: Int = -1, incrementBy: Int = 1) -> () -> Int {
    var value = initial
    return {
        value += incrementBy
        return value
    }
}
