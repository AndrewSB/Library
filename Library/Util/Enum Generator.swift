//
//  Enum Generator.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

#if swift(>=3)
public protocol EnumCollection: Hashable {}
extension EnumCollection {
    static func cases() -> AnySequence<Self> {
        typealias S = Self
        return AnySequence { () -> AnyIterator<S> in
            var raw = 0
            return AnyIterator {
                let current: Self = withUnsafePointer(to: &raw) {
                    $0.withMemoryRebound(to: S.self, capacity: 1) { $0.pointee }
                }
                guard current.hashValue == raw else { return nil }
                raw += 1
                return current
            }
        }
    }
}
#else

public protocol EnumCollection : Hashable {}
public extension EnumCollection {
    /**
     Returns all cases of the enum type `cases()` is called on.

     :returns: An `EnumSequence` struct with all of the cases of the supplied enum
    */
    static public func cases() -> EnumSequence<Self> {
        return EnumSequence()
    }
}

public struct EnumSequence<Enum : Hashable> : SequenceType {
    public func generate() -> EnumGenerator<Enum> {
        switch sizeof(Enum) {
        case 0: return SingleEnumGenerator()
        default: return EnumGenerator()
        }
    }
}

public class SingleEnumGenerator<Enum : Hashable> : EnumGenerator<Enum> {
    override public func next() -> Enum? {
        return done ? nil : { done = true; return unsafeBitCast((), Enum.self) }()
    }
}

public class EnumGenerator<Enum : Hashable> : GeneratorType {
    public var rawEnum = 0
    public var done = false

    public func next() -> Enum? {
        if done { return nil }

        let enumCase = withUnsafePointer(&rawEnum) { UnsafePointer<Enum>($0).memory }
        if enumCase.hashValue == rawEnum {
            rawEnum += 1
            return enumCase
        } else {
            done = true
            return nil
        }
    }
}

#endif
