//
//  InsettableTextField.swift
//  Library
//
//  Created by Andrew Breckenridge on 4/23/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

class InsettableTextField: UITextField {

    @IBInspectable var insetX: CGFloat = 0
    @IBInspectable var insetY: CGFloat = 0
    
    // placeholder position
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , insetX , insetY)
    }
    
    // text position
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , insetX , insetY)
    }
    
}
