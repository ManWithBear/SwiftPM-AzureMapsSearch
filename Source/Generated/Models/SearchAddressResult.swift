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

/// This object is returned from a successful Search calls.
public struct SearchAddressResult: Codable {
    // MARK: Properties

    /// Summary object for a Search API response
    public let summary: SearchSummary?
    /// A list of Search API results.
    public let results: [SearchAddressResultItem]?

    // MARK: Initializers

    /// Initialize a `SearchAddressResult` structure.
    /// - Parameters:
    ///   - summary: Summary object for a Search API response
    ///   - results: A list of Search API results.
    public init(
        summary: SearchSummary? = nil, results: [SearchAddressResultItem]? = nil
    ) {
        self.summary = summary
        self.results = results
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case summary = "summary"
        case results = "results"
    }

    /// Initialize a `SearchAddressResult` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.summary = try? container.decode(SearchSummary.self, forKey: .summary)
        self.results = try? container.decode([SearchAddressResultItem].self, forKey: .results)
    }

    /// Encode a `SearchAddressResult` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if summary != nil { try? container.encode(summary, forKey: .summary) }
        if results != nil { try? container.encode(results, forKey: .results) }
    }
}
