import UIKit
import RxSwift

/**
 A convinient UIViewController that has an embedded disposeBag
 */
open class RxViewController: UIViewController {

    open let disposeBag = DisposeBag()

}
