//
//  Introspectable.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

/**
 A protocol that offers all instance properties as a `[String: Any]`
 */
public protocol Introspectable {
    /**
     Returns all of the object's instance properties in a dictionary
     */
    var properties: [String: Any]? { get }
}

public extension Introspectable where Self: Any {
    public var properties: [String: Any]? {
        get {
            let mirror = Mirror(reflecting: self)
            
            return mirror.children.reduce([String: Any]()) { (acc, cur) in
                var acc = acc // this is temporary, because Swift 3 deprecated var params in functions
                if let name = cur.label {
                    acc[name] = cur.value
                }
                return acc
            }
        }
    }
}