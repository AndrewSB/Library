//
//  NSError Make.swift
//  Library
//
//  Created by Andrew Breckenridge on 1/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

extension NSError {
    convenience init(localizedDescription: String) {
        self.init(domain: NSBundle.mainBundle().bundleIdentifier ?? "", code: -1, userInfo: [NSLocalizedDescriptionKey: localizedDescription])
    }
}