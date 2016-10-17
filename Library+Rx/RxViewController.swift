import UIKit
import RxSwift

/**
 A convinience class that embeds a disposeBag into a viewController
 */
open class RxViewController: UIViewController {
    
    open let disposeBag = DisposeBag()
    
}
