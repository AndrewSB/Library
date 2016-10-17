import Foundation
import RxSwift
import RxCocoa

public protocol AnyOptional {
    associatedtype T
    var asOptional: T? { get }
}

extension Optional: AnyOptional {
    public var asOptional: Wrapped? {
        return self
    }
}

public extension Observable where Element: AnyOptional {
    public func ignoreNil() -> Observable<Element.T> {
        return self
            .filter { return $0.asOptional != nil  }
            .map { return $0.asOptional! }
    }
}

public extension Driver where Element: AnyOptional {
    func ignoreNil() -> Driver<Element.T> {
        return self
            .filter { return $0.asOptional != nil  }
            .map { return $0.asOptional! }
    }
}

public extension Observable where Element: Equatable {
    public func ignore(_ value: Element) -> Observable<Element> {
        return filter { (e) -> Bool in
            return value != e
        }
    }
}

public extension Driver where Element: Equatable {
    func ignore(_ value: Element) -> Driver<Element> {
        return filter { (e) -> Bool in
            return value != e
        }
    }
}
