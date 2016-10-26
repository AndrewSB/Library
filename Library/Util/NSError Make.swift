//
//  NSError Make.swift
//  Library
//
//  Created by Andrew Breckenridge on 1/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

public extension NSError {
    
    /**
     Creates a `NSError` instance with the target's bundleIdentifier
     
     :param: localizedDescription The string that's inserted into the `NSError`'s userInfo.
     :param: code The error code to create the `NSError` with.
     
     :returns: A `NSError` object.
     */
    public convenience init(localizedDescription: String = "An error occured, try again", code: Int = -1) {
        #if swift(>=3)
        self.init(domain: Bundle.main.bundleIdentifier ?? "", code: code, userInfo: [NSLocalizedDescriptionKey as NSObject: localizedDescription as AnyObject])
        #else
        self.init(domain: NSBundle.mainBundle().bundleIdentifier ?? "", code: code, userInfo: [NSLocalizedDescriptionKey: localizedDescription])
        #endif
    }
    
}
