// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// The result of the query. SearchAddressResponse if the query completed successfully, ErrorResponse otherwise.
public struct SearchAddressBatchItemResponse: Codable, Swift.Error {
    // MARK: Properties

    /// Summary object for a Search API response
    public let summary: SearchSummary?
    /// A list of Search API results.
    public let results: [SearchAddressResultItem]?
    /// The error object.
    public let error: ErrorDetail?

    // MARK: Initializers

    /// Initialize a `SearchAddressBatchItemResponse` structure.
    /// - Parameters:
    ///   - summary: Summary object for a Search API response
    ///   - results: A list of Search API results.
    ///   - error: The error object.
    public init(
        summary: SearchSummary? = nil, results: [SearchAddressResultItem]? = nil, error: ErrorDetail? = nil
    ) {
        self.summary = summary
        self.results = results
        self.error = error
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case summary = "summary"
        case results = "results"
        case error = "error"
    }

    /// Initialize a `SearchAddressBatchItemResponse` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.summary = try? container.decode(SearchSummary.self, forKey: .summary)
        self.results = try? container.decode([SearchAddressResultItem].self, forKey: .results)
        self.error = try? container.decode(ErrorDetail.self, forKey: .error)
    }

    /// Encode a `SearchAddressBatchItemResponse` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if summary != nil { try? container.encode(summary, forKey: .summary) }
        if results != nil { try? container.encode(results, forKey: .results) }
        if error != nil { try? container.encode(error, forKey: .error) }
    }
}