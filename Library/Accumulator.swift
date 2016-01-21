//
//  Accumulator.swift
//  Library
//
//  Created by Andrew Breckenridge on 11/8/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

/**
 A generator that creates a multi-call closure which returns an accumulation of values over time

 :param: initial The starting value for the accumulator.
 :param: incrementBy The value that should be addded to initial when the closure is called.

 :returns: A closure that when called returns the initial with the incrementBy param mutliplied.
 */
public func accumulator(initial: Int = 0, incrementBy: Int = 1) -> (() -> Int) {
    
    // Start at one below inital, so that the first call starts with the initial value.
    var value = initial - 1
    
    return {
        value += incrementBy
        return value
    }
    
}