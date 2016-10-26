//
//  Delay.swift
//  Library
//
//  Created by Andrew Breckenridge on 10/28/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

#if !swift(>=3) // you dont need this in swift 3
import Foundation

/**
 Syntactic sugar for dispatch_after

 :param: delay How long to defer running the closure for.
 :param: closure The closure to execute
 */
public func delay(delay: Double, closure: () -> Void) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}
#endif
