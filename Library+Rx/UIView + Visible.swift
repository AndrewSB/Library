import UIKit
import RxSwift
import RxCocoa

public extension Reactive where Base: UIView {

    /**
     Bindable sink for `visible` property.
     */
    public var visible: UIBindingObserver<Base, Bool> {
        return UIBindingObserver(UIElement: self.base) { view, visible in
            view.isHidden = !visible
        }
    }

}
