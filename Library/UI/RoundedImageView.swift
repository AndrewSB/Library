//
//  RoundedImageView.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

public class RoundedImageView: UIImageView {
    
    // TODO: @IBInspectable isn't preserved when the `Library` is imported as a framework. #pleasefixthisapple
    /**
     The corner radius to which the `UIImageView`'s layer is to be clipped
     */
    @IBInspectable public lazy var cornerRadius: CGFloat = self.frame.width / 2
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
}