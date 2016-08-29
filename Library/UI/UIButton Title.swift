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
    #if swift(>=3)
    public func setTitle(title: String,
                         animated: Bool = true,
                         forStates states: [UIControlState] = [.normal, .highlighted, .disabled, .selected]) {
        
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
                         forStates states: [UIControlState] = [.Normal, .Highlighted, .Disabled, .Selected]) {
        
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
