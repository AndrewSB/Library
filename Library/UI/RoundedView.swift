//
//  RoundedImageView.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

public class RoundedView: UIView {
    
    public enum RoundBy {
        case Height
        case Width
    }
    
    /**
     Whether the view should be use the height or width of the frame to round itself
     */
    public var roundBy: RoundBy = .Height

    // TODO: @IBInspectable isn't preserved when the `Library` is imported as a framework. #pleasefixthisapple
    /**
     The corner radius to which the `UIView`'s layer is to be clipped
     */
    @IBInspectable public lazy var cornerRadius: CGFloat = (self.roundBy == .Height ? self.frame.height : self.frame.width) / 2

    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }

}

public class RoundedImageView: UIImageView {

    /**
     Whether the view should be use the height or width of the frame to round itself
     */
    public var roundBy: RoundedView.RoundBy = .Height
    
    // TODO: @IBInspectable isn't preserved when the `Library` is imported as a framework. #pleasefixthisapple
    /**
     The corner radius to which the `UIView`'s layer is to be clipped
     */
    @IBInspectable public lazy var cornerRadius: CGFloat = (self.roundBy == .Height ? self.frame.height : self.frame.width) / 2
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
}

public class RoundedButton: UIButton {
    
    /**
     Whether the button should be use the height or width of the frame to round itself
     */
    public var roundBy: RoundedView.RoundBy = .Height
    
    // TODO: @IBInspectable isn't preserved when the `Library` is imported as a framework. #pleasefixthisapple
    /**
     The corner radius to which the `UIButton`'s layer is to be clipped
     */
    @IBInspectable public lazy var cornerRadius: CGFloat = (self.roundBy == .Height ? self.frame.height : self.frame.width) / 2
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
}

public class RoundedLabel: UILabel {
    
    /**
     Whether the label should be use the height or width of the frame to round itself
     */
    public var roundBy: RoundedView.RoundBy = .Height
    
    // TODO: @IBInspectable isn't preserved when the `Library` is imported as a framework. #pleasefixthisapple
    /**
    The corner radius to which the `UILabel`'s layer is to be clipped
    */
    @IBInspectable public lazy var cornerRadius: CGFloat = (self.roundBy == .Height ? self.frame.height : self.frame.width) / 2
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
}

public class RoundedTextField: UITextField {
    
    /**
     Whether the text field should be use the height or width of the frame to round itself
     */
    public var roundBy: RoundedView.RoundBy = .Height
    
    // TODO: @IBInspectable isn't preserved when the `Library` is imported as a framework. #pleasefixthisapple
    /**
    The corner radius to which the `UITextField`'s layer is to be clipped
    */
    @IBInspectable public lazy var cornerRadius: CGFloat = (self.roundBy == .Height ? self.frame.height : self.frame.width) / 2
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
}
#endif