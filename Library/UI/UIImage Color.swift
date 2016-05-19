//
//  UIImage Color.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/2/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

public extension UIImage {
    /**
     Creates an UIImage instance of a color
     
     :param: color the color to fill the UIImage instance with
     :param: size the size of the UIImage, default is 1x1
     
     :returns: A `UIImage` instance of the specified size filled with the specified color
     */
    class func imageWithColor(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        #if swift(>=3)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        #else
        let image = UIGraphicsGetImageFromCurrentImageContext()
        #endif
        UIGraphicsEndImageContext()
        return image
    }

}
#endif