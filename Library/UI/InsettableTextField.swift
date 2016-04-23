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
    override public func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , insetX , insetY)
    }
    
    // text position
    override public func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , insetX , insetY)
    }
    
}
