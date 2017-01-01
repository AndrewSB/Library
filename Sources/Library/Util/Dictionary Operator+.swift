import Foundation

public func + <K, V>(lhs: [K: V], rhs: [K: V]?) -> [K: V] {
    guard let rhs = rhs else { return lhs }

    return lhs.reduce(rhs) {
        var new = $0 as [K: V]
        new.updateValue($1.1, forKey: $1.0)
        return new
    }
}
