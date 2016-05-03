//
//  InsettableLabel.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/2/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

public class InsettableLabel: UILabel {
    
    @IBInspectable public var insetX: CGFloat = 0
    @IBInspectable public var insetY: CGFloat = 0
    
    override public func drawTextInRect(rect: CGRect) {
        let insets = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        super.drawTextInRect(UIEdgeInsetsInsetRect(rect, insets))
    }
 
    override public func sizeThatFits(size: CGSize) -> CGSize {
        let uninsettedFitSize = super.sizeThatFits(size)
        
        return CGSize(width: uninsettedFitSize.width + (2 * insetX), height: uninsettedFitSize.height + (2 * insetY))
    }
}