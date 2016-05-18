//
//  Alert.swift
//  Library
//
//  Created by Andrew Breckenridge on 11/3/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

// Syntactic sugar for error messaging with UIAlertController

import UIKit

public extension UIAlertController {
    
    /**
     Creates an `UIAlertController` instance with a `cancel` action titled "Ok".
     
     :param: actionedTitle The title of the alert.
     :param: message The message of the alert.
     
     :returns: An `UIAlertController` instance.
     */
    public convenience init(okayableTitle title: String = "Uh oh!", message: String) {
        #if swift(>=3)
            self.init(title: title, message: message, preferredStyle: .alert)
            self.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        #else
            self.init(title: title, message: message, preferredStyle: .Alert)
            self.addAction(UIAlertAction(title: "Ok", style: .Cancel, handler: nil))
        #endif
    }
    
}