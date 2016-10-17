import Foundation
import RxSwift
import RxCocoa

public protocol OptionalType {
    associatedtype T
    var asOptional: T? { get }
}

extension Optional: OptionalType {
    public var asOptional: Wrapped? {
        return self
    }
}

public extension Observable where Element: OptionalType {
    public func ignoreNil() -> Observable<Element.T> {
        return self
            .filter { return $0.asOptional != nil  }
            .map { return $0.asOptional! }
    }
}

extension Driver where Element: OptionalType {
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

extension Driver where Element: Equatable {
    func ignore(_ value: Element) -> Driver<Element> {
        return filter { (e) -> Bool in
            return value != e
        }
    }
}
