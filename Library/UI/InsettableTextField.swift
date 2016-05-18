//
//  InsettableTextField.swift
//  Library
//
//  Created by Andrew Breckenridge on 4/23/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

public class InsettableTextField: UITextField {

    @IBInspectable public var insetX: CGFloat = 0
    @IBInspectable public var insetY: CGFloat = 0
    
    // placeholder position
    #if swift(>=3)
    public override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
    #else
    override public func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , insetX , insetY)
    }
    #endif
    
    // text position
    #if swift(>=3)
    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
    #else
    override public func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , insetX , insetY)
    }
    #endif
    
}
