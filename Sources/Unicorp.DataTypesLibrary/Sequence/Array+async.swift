//
//  Array+async.swift
//
//
//  Created by Ressier Mathilde on 24/01/2024.
//

import Foundation

extension Sequence {
    /// Iterate through an array to apply `operation` asynchronously to each element, one after the other
    public func asyncForEach(
        operation: @escaping (Element) async throws -> Void
    ) async rethrows {
        for element in self {
            try await operation(element)
        }
    }

    /// Iterate through an array to apply `transform` asynchronously to each element one after the other
    /// to create a new array with transformed elements
    public func asyncMap<T>(
        transform: @escaping (Element) async throws -> T
    ) async rethrows -> [T] {
        var result = [T]()

        for element in self {
            try await result.append(transform(element))
        }

        return result
    }

    /// Iterate through array and apply `operation` asynchronously on all element at the same time
    public func concurrentForEach(
        operation: @escaping (Element) async throws -> Void
    ) async rethrows {
        try await withThrowingTaskGroup(of: Void.self) { group in
            for element in self {
                group.addTask {
                    try await operation(element)
                }
            }

            try await group.waitForAll()
        }
    }

    /// Iterate through array and apply `transform` asynchronously on all element at the same time, returning
    /// an array with all the transformed element (in the same order as in input)
    public func concurrentMap<T>(
        transform: @escaping (Element) async throws -> T
    ) async rethrows -> [T] {
        // Create one task for each element. It will run in parallele but we will got
        // result in the same order as processed thanks to asyncMap.
        let tasks = map { element in
            Task {
                try await transform(element)
            }
        }

        return try await tasks.asyncMap { task in
            try await task.value
        }
    }
}
