//
//  Roundable.swift
//  Library
//
//  Created by Andrew Breckenridge on 5/24/16.
//  Copyright © 2016 Andrew Breckenridge. All rights reserved.
//

import Foundation

#if os(iOS)
import UIKit
#endif

public enum RoundBy {
    case height
    case width
}

public protocol Roundable {
    var roundBy: RoundBy { get }
    func round()
}

#if os(iOS)
public extension Roundable where Self: UIView {

    var roundBy: RoundBy { return .height }

    func round() {
        let cornerRadius = (self.roundBy == .height ? self.frame.height : self.frame.width) / 2

        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }

}
#endif
