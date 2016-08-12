//
//  UIButton Title.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

public extension UIButton {

    /**
     Convenience mutator for the button's title
     */
    public func setTitle(title: String,
                         forStates states: [UIControlState] = [.Normal, .Highlighted, .Disabled, .Selected]) {
        states.forEach { self.setTitle(title, forState: $0) }
    }

}
#endif