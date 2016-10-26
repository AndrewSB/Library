//
//  Prepend.swift
//  Library
//
//  Created by Andrew Breckenridge on 1/17/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

public extension Array {

    /**
     Mutates the array and returns self to allow chaining

     :param: newElement The new element to be inserted at the end of the array

     :returns: The same instance as the receiver. This allows chaining.
     */
    public mutating func appendAndChain(newElement: Element) -> [Element] {
        self.append(newElement)
        return self
    }

    /**
     Mutates the array and returns self to allow chaining

     :param: newElement The new element to be inserted at the beginning of the array

     :returns: The same instance as the receiver. This allows chaining.
     */
    public mutating func prependAndChain(newElement: Element) -> [Element] {
        #if swift(>=3.0)
            self.insert(newElement, at: 0)
        #else
            self.insert(newElement, atIndex: 0)
        #endif
        return self
    }

}
