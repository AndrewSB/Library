//
//  Alert.swift
//  Library
//
//  Created by Andrew Breckenridge on 11/3/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

// Syntactic sugar for UIAlertController

import UIKit

public extension UIAlertController {
    
    public convenience init(title: String = "Uh oh!", errorMessage: String) {
        self.init(title: title, message: errorMessage, preferredStyle: .Alert)
        self.addAction(UIAlertAction(title: "Ok", style: .Cancel, handler: nil))
    }
    
}