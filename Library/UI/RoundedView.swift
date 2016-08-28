//
//  RoundedImageView.swift
//  Library
//
//  Created by Andrew Breckenridge on 3/19/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

public class RoundedView: UIView, Roundable {

    override public func awakeFromNib() {
        super.awakeFromNib()
        
        round()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        round()
    }
    
}

public class RoundedImageView: UIImageView, Roundable {

    override public func awakeFromNib() {
        super.awakeFromNib()
        
        round()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        round()
    }
    
}

public class RoundedButton: UIButton, Roundable {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        round()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        round()
    }
    
}

public class RoundedLabel: UILabel, Roundable {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        round()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        round()
    }
    
}

public class RoundedTextField: UITextField, Roundable {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        round()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        round()
    }
    
}
#endif