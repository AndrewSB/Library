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

    private static var allStates: [UIControlState] {
        return [.normal, .highlighted, .disabled, .selected]
    }

    /**
     Convenience mutator for the button's title
     */
    #if swift(>=3)
    public func set(title: String,
                    animated: Bool = true,
                    forStates states: [UIControlState] = UIButton.allStates) {

        if animated {
            states.forEach { state in self.setTitle(title, for: state) }
        } else {
            UIView.performWithoutAnimation {
                states.forEach { state in self.setTitle(title, for: state) }
            }
        }

    }
    #else
    public func setTitle(title: String,
                         animated: Bool = true,
                         forStates states: [UIControlState] = UIButton.allStates) {

        if animated {
            states.forEach { self.setTitle(title, forState: $0) }
        } else {
            UIView.performWithoutAnimation {
                states.forEach { self.setTitle(title, forState: $0) }
            }
        }

    }
    #endif

}
#endif
