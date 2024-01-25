import Foundation

extension String {

    // -------------------------------------------------------------------------
    // MARK: - Regex
    // -------------------------------------------------------------------------

    /// Return all substring of the current string that matches the given `regex`
    public func matches(regex: String) throws -> [String] {
        let regex = try Regex(regex)
        let matches = self.ranges(of: regex)

        return matches.map { String(self[$0]) }
    }

    /// Check if the current string match at least in part the given `regex`
    public func contains(regex: String) throws -> Bool {
        self.contains(try Regex(regex))
    }

    /// Return all substring of the current string that matches the given `regex` substring request
    /// As example, (\d+)(.*)$ will return several substring for the different parts defined in the regex.
    /// The first value of the string array is the global match, and the next ones are the substring of the match
    public func substringMatches(
        regex: String,
        options: NSRegularExpression.Options = []
    ) throws -> [[String]] {
        let regex = try NSRegularExpression(pattern: regex, options: options)
        let string = self as NSString
        let range = NSRange(location: 0, length: self.count)
        let matches = regex.matches(in: self, range: range)

        return matches.map { match -> [String] in
            var submatches = [String]()

            for index in 0 ..< match.numberOfRanges {
                let range = match.range(at: index)
                guard range.location != NSNotFound else { break }

                submatches.append(string.substring(with: range))
            }

            return submatches
        }
    }

}
