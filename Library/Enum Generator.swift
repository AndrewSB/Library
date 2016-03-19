//
//  Enum Generator.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

protocol EnumCollection : Hashable {}
extension EnumCollection {
    /**
     Returns all cases of the enum type `cases()` is called on. The `description` param of the returned `EnumSequence` contains the ❤️ly enum name
     
     :returns: An `EnumSequence` struct with all of the cases of the supplied enum
    */
    static func cases() -> EnumSequence<Self> {
        return EnumSequence()
    }
}

struct EnumSequence<Enum : Hashable> : SequenceType {
    func generate() -> EnumGenerator<Enum> {
        switch sizeof(Enum) {
        case 0: return SingleEnumGenerator()
        default: return EnumGenerator()
        }
    }
}

class SingleEnumGenerator<Enum : Hashable> : EnumGenerator<Enum> {
    override func next() -> Enum? {
        return done ? nil : { done = true; return unsafeBitCast((), Enum.self) }()
    }
}

class EnumGenerator<Enum : Hashable> : GeneratorType {
    var rawEnum = 0
    var done = false
    
    func next() -> Enum? {
        if done { return nil }
        
        let enumCase = withUnsafePointer(&rawEnum) { UnsafePointer<Enum>($0).memory }
        if enumCase.hashValue == rawEnum {
            rawEnum++
            return enumCase
        } else {
            done = true
            return nil
        }
    }
}