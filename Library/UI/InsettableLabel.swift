//
//  InsettableLabel.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/2/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

open class InsettableLabel: UILabel {
    @IBInspectable open var insetX: CGFloat = 0
    @IBInspectable open var insetY: CGFloat = 0
    
    open override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        let uninsettedFitSize = super.sizeThatFits(size)
        
        return CGSize(width: uninsettedFitSize.width + (2 * insetX), height: uninsettedFitSize.height + (2 * insetY))
    }
}
#endif
