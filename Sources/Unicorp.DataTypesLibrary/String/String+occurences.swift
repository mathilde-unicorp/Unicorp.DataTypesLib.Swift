import Foundation

extension String {

  /// Compute the number of occurence for each different character in the array
  public var itemsOccurencesCount: [Character: Int] {
    self.map() { $0 }.itemsOccurencesCount
  }
  
}
