import Foundation
import RxSwift
import RxCocoa

protocol OptionalType {
    associatedtype T
    var asOptional: T? { get }
}

extension Optional: OptionalType {
    var asOptional: Wrapped? {
        return self
    }
}

extension Observable where Element: OptionalType {
    func ignoreNil() -> Observable<Element.T> {
        return self
            .filter { return $0.asOptional != nil  }
            .map { return $0.asOptional! }
    }
}

//extension SharedSequence where Element: OptionalType {
//    func ignoreNil() -> SharedSequence<DriverSharingStrategy, Element.T> {
//        return self.asSharedSequence()
//            .filter { return $0.asOptional != nil }
//            .map { return $0.asOptional! }
//    }
//}

extension Observable where Element: Equatable {
    func ignore(_ value: Element) -> Observable<Element> {
        return filter { (e) -> Bool in
            return value != e
        }
    }
}
//
//extension Driver where Element: Equatable {
//    func ignore(_ value: Element) -> Driver<Element> {
//        return filter { (e) -> Bool in
//            return value != e
//        }
//    }
//}
