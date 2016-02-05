//
//  Optional + GetOrElse.swift
//  Library
//
//  Created by Andrew Breckenridge on 2/5/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

public extension Optional {
    
    public func getOrElse(@autoclosure els: () -> Wrapped) -> Wrapped {
       
        switch self {
        case .None:
            return els()
        case .Some(let unwrapped):
            return unwrapped
        }
        
    }
    
}