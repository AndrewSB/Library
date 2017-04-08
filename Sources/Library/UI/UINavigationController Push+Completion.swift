//
//  UINavigationController Push+Completion.swift
//  Library
//
//  Created by Andrew Breckenridge on 10/26/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

extension UINavigationController {
    public func push(viewController: UIViewController,
                     animated: Bool,
                     completion: @escaping () -> Void) {

        self.pushViewController(viewController, animated: animated)

        guard animated, let coordinator = transitionCoordinator else {
            completion()
            return
        }

        coordinator.animate(
            // pass nil here or do something animated if you'd like, e.g.:
            alongsideTransition: { _ in
                viewController.setNeedsStatusBarAppearanceUpdate()
            },
            completion: { _ in
                completion()
            }
        )
    }
}
