//
//  UIButton Title.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

public extension UIButton {

    /**
     Convenience accessor and mutator for the button's title
     */
    
    #if swift(>=3)
    public var title: String? {
        get { return self.title(for: []) }
        set { self.setTitle(title, for: []) }
    }
    #else
    public var title: String? {
        get { return self.titleForState(.Normal) }
        set { self.setTitle(title, forState: .Normal) }
    }
    #endif

}