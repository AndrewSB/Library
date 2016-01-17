//
//  Prepend.swift
//  Library
//
//  Created by Andrew Breckenridge on 1/17/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

public extension Array {
    
    public mutating func prepend(newElement: Element) {
        self = [newElement] + self
    }
    
}