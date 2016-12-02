import Foundation

// TODO: this protocol isn't needed in swift 3.1
// remove it then https://github.com/apple/swift/blob/master/CHANGELOG.md#swift-31
public protocol BooleanType {
    var boolValue: Bool { get }
}

extension Bool: BooleanType {
    public var boolValue: Bool {
        return self
    }
}

public extension Array where Element: BooleanType {
    var allTrue: Bool {
        return reduce(true) { (sum, next) in return sum && next.boolValue }
    }

    var anyTrue: Bool {
        return contains { $0.boolValue == true }
    }
}

public func allTrue(_ array: [Bool]) -> Bool {
    return array.allTrue
}
