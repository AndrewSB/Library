//
//  UIViewController UnwrapNavigationController.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/2/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

#if os(iOS)
import UIKit

public extension UIViewController {

    public func unwrapNavCon() -> UIViewController {

        let unwrappedViewController = (self as? UINavigationController)?.viewControllers[0]

        return unwrappedViewController ?? self

    }

}
#endif
