//
//  InsettableLabel.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/2/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

public class InsettableLabel: UILabel {
    
    @IBInspectable public var insetX: CGFloat = 0
    @IBInspectable public var insetY: CGFloat = 0
    
    #if swift(>=3)
    public override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    #else
    override public func drawTextInRect(rect: CGRect) {
        let insets = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        super.drawTextInRect(UIEdgeInsetsInsetRect(rect, insets))
    }
    #endif
    
    
    
    #if swift(>=3)
    override public func sizeThatFits(_ size: CGSize) -> CGSize {
        let uninsettedFitSize = super.sizeThatFits(size)
        
        return CGSize(width: uninsettedFitSize.width + (2 * insetX), height: uninsettedFitSize.height + (2 * insetY))
    }
    #else
    override public func sizeThatFits(size: CGSize) -> CGSize {
        let uninsettedFitSize = super.sizeThatFits(size)
    
        return CGSize(width: uninsettedFitSize.width + (2 * insetX), height: uninsettedFitSize.height + (2 * insetY))
    }
    #endif
    
}
#endif