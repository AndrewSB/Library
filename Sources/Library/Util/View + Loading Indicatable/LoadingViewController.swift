//
//  LoadingViewController.swift
//  Library
//
//  Created by Andrew Breckenridge on 10/26/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import UIKit

open class LoadingViewController: UIViewController {

    open override func loadView() {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()

        self.view = activityIndicator
    }

    open var loadingView: UIActivityIndicatorView {
        return self.view as! UIActivityIndicatorView //swiftlint:disable:this force_cast
    }

    open func show() {
        (self.view as! UIActivityIndicatorView).startAnimating() //swiftlint:disable:this force_cast
    }

    open func hide() {
        (self.view as! UIActivityIndicatorView).stopAnimating() //swiftlint:disable:this force_cast
    }

}

public extension UIViewController {

    public var loader: LoadingViewController {
            return childViewControllers
                .flatMap { $0 as? LoadingViewController }
                .first ?? self.createAndAddLoader()
    }

    fileprivate func createAndAddLoader() -> LoadingViewController {
        let loader = LoadingViewController()
        self.addChildViewController(loader)
        loader.didMove(toParentViewController: self)
        loader.view.center = view.center
        view.addSubview(loader.view)
        return loader
    }
}
