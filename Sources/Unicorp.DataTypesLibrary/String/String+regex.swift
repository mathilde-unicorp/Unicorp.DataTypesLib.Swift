import Foundation

extension String {

  //----------------------------------------------------------------------------
  // MARK: - Regex
  //----------------------------------------------------------------------------

  /// Return all substring of the current string that matches the given `regex`
  func matches(regex: String,
               options: NSRegularExpression.Options = []) throws -> [String] {
    let regex = try NSRegularExpression(pattern: regex, options: options)

    let string = self as NSString
    let range = NSRange(location: 0, length: self.count)
    let matches = regex.matches(in: self, range: range)

    return matches.map() { string.substring(with: $0.range) }
  }

  /// Return all substring of the current string that matches the given `regex` substring request
  /// As example, (\d+)(.*)$ will return several substring for the different parts defined in the regex.
  /// The first value of the string array is the global match, and the next ones are the substring of the match
  func substringMatches(
    regex: String,
    options: NSRegularExpression.Options = []
  ) throws -> [[String]] {
    let regex = try NSRegularExpression(pattern: regex, options: options)
    let string = self as NSString
    let range = NSRange(location: 0, length: self.count)
    let matches = regex.matches(in: self, range: range)

    return matches.map() { match -> [String] in
      var submatches = [String]()

      for i in 0 ..< match.numberOfRanges {
        let range = match.range(at: i)
        guard range.location != NSNotFound else { break }

        submatches.append(string.substring(with: range))
      }

      return submatches
    }
  }

  /// Check if the current string match at least in part the given `regex`
  func contains(regex: String,
                options: NSRegularExpression.Options = []) throws -> Bool {
    return try matches(regex: regex, options: options).count > 0
  }

  /// Find the first part of the current string that match the given `regex`
  func firstMatch(regex: String,
                  options: NSRegularExpression.Options = []) throws -> String? {
    let regex = try NSRegularExpression(pattern: regex, options: options)

    let string = self as NSString
    let range = NSRange(location: 0, length: self.count)

    guard let firstMatch = regex.firstMatch(in: self, range: range) else {
      return nil
    }

    return string.substring(with: firstMatch.range)
  }
}
