import Foundation

public extension Array where Element: Equatable {

    /**
     The last index of an array is an effecient computation of the array.reversed.index(of: ). 
     Runtime is O(i), instead of O(N+i), where i is the index of first matched element reversed.
    
     :param: of the Equatable element you'd like the index of

     :returns: The first index from the end of the array if it exists, else nil
     */
    func lastIndex(of match: Element) -> Index? { // swiftlint:disable variable_name (of)
        for idx in 0..<self.endIndex {
            let reversedIdx = (self.endIndex - 1) - idx
            let candidate = self[reversedIdx]

            if candidate == match {
                return reversedIdx
            }
        }

        return nil
    }

}
