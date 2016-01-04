//
//  Delay.swift
//  Library
//
//  Created by Andrew Breckenridge on 10/28/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation

public func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}