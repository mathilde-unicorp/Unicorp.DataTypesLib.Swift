import Foundation

extension Array where Element: Hashable {

  /// Compute the number of occurence for each different items in the array
  public var itemsOccurencesCount: [Element: Int] {
    var counts = [Element: Int]()

    forEach() { character in
      if counts.keys.contains(character) {
        counts[character]! += 1
      } else {
        counts[character] = 1
      }
    }

    return counts
  }
}
