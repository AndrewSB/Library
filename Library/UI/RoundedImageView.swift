//
//  RoundedImageView.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    /**
     The corner radius to which the `UIImageView`'s layer is to be clipped
     */
    @IBInspectable lazy var cornerRadius: CGFloat = self.frame.width / 2
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
}