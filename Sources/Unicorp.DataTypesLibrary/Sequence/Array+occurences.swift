import Foundation

extension Array where Element: Hashable {

    /// Compute the number of occurence for each different items in the array
    public var itemsOccurencesCount: [Element: Int] {
        return self.reduce(into: [Element: Int]()) { result, character in
            if result.keys.contains(character) {
                result[character]! += 1
            } else {
                result[character] = 1
            }
        }
    }
}
