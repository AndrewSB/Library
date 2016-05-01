//
//  RenderedImageView.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/1/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

public class RenderedImageView: UIImageView {
    
    public var renderingMode: UIImageRenderingMode = .AlwaysTemplate
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        self.image = self.image!.imageWithRenderingMode(renderingMode)
    }
    
}