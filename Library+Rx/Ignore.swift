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

public extension SharedSequence where Element: AnyOptional {
    public func ignoreNil() -> SharedSequence<S, Element.T> {
        return self
            .filter { return $0.asOptional != nil  }
            .map { return $0.asOptional! }
    }
}

public extension Observable where Element: Equatable {
    public func ignore(_ value: Element) -> Observable<Element> {
        return self.filter({ e in
            return value != e
        })
    }
}

public extension SharedSequence where Element: Equatable {
    public func ignore(_ value: Element) -> SharedSequence<S, Element> {
        return self.filter({ e in
            return value != e
        })
    }
}
