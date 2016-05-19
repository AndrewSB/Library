//
//  RenderedImageView.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/1/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

/**
 Convenience UIImageView subclass that exposes the `renderingMode` as a instance variable
 */
public class RenderedImageView: UIImageView {
    
    #if swift(>=3)
    public var renderingMode: UIImageRenderingMode = .alwaysTemplate
    #else
    public var renderingMode: UIImageRenderingMode = .AlwaysTemplate
    #endif
    
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        #if swift(>=3)
        self.image = self.image!.withRenderingMode(renderingMode)
        #else
        self.image = self.image!.imageWithRenderingMode(renderingMode)
        #endif
    }
    
}
#endif