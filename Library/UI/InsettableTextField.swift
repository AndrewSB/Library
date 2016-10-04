//
//  InsettableTextField.swift
//  Library
//
//  Created by Andrew Breckenridge on 4/23/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

open class InsettableTextField: UITextField {
    @IBInspectable open var insetX: CGFloat = 0
    @IBInspectable open var insetY: CGFloat = 0
    
    /// placeholder position
    open override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
    
    /// text position
    open override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
    
}
#endif
