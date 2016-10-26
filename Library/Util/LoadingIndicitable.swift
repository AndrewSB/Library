//
//  LoadingIndicitable.swift
//  Library
//
//  Created by Andrew Breckenridge on 10/26/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation
import UIKit

public protocol LoadingIndicatable {
    var loading: Bool { get set }
}

public extension LoadingIndicatable where Self: UIViewController {

    /**
     Cast to `LoadingIndicatable` and you can call this signature on your
     `UIViewController` instance to get a white loading icon
     */
    public var defaultLoadingImplementation: Bool {
        get { return self.loader.view.isHidden == false }
        set { newValue ? startLoading() : stopLoading() }
    }

    // this is to defined so every `UIViewController` doesn't need to define `loading` to be valid
    public var loading: Bool {
        get { return defaultLoadingImplementation }
        set { defaultLoadingImplementation = newValue }
    }

    public func startLoading(_ loaderColor: UIColor? = .white) {
        self.view.isUserInteractionEnabled = false
        self.loader.loadingView.color = loaderColor
        self.loader.show()
    }

    public func stopLoading() {
        self.view.isUserInteractionEnabled = true
        self.loader.hide()
    }

}

// make every viewController LoadingIndicatable by default
extension UIViewController: LoadingIndicatable {}
