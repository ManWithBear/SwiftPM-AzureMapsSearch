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

/// Summary object for a Search API response.
public struct SearchSummary: Codable, Swift.Error {
    // MARK: Properties

    /// The query parameter that was used to produce these search results.
    public let query: String?
    /// The type of query being returned: NEARBY or NON_NEAR.
    public let queryType: QueryType?
    /// Time spent resolving the query, in milliseconds.
    public let queryTime: Int32?
    /// Number of results in the response.
    public let numResults: Int32?
    /// Maximum number of responses that will be returned
    public let top: Int32?
    /// The starting offset of the returned Results within the full Result set.
    public let skip: Int32?
    /// The total number of Results found.
    public let totalResults: Int32?
    /// The maximum fuzzy level required to provide Results.
    public let fuzzyLevel: Int32?
    /// Indication when the internal search engine has applied a geospatial bias to improve the ranking of results.  In  some methods, this can be affected by setting the lat and lon parameters where available.  In other cases it is  purely internal.
    public let geoBias: LatLongPairAbbreviated?

    // MARK: Initializers

    /// Initialize a `SearchSummary` structure.
    /// - Parameters:
    ///   - query: The query parameter that was used to produce these search results.
    ///   - queryType: The type of query being returned: NEARBY or NON_NEAR.
    ///   - queryTime: Time spent resolving the query, in milliseconds.
    ///   - numResults: Number of results in the response.
    ///   - top: Maximum number of responses that will be returned
    ///   - skip: The starting offset of the returned Results within the full Result set.
    ///   - totalResults: The total number of Results found.
    ///   - fuzzyLevel: The maximum fuzzy level required to provide Results.
    ///   - geoBias: Indication when the internal search engine has applied a geospatial bias to improve the ranking of results.  In  some methods, this can be affected by setting the lat and lon parameters where available.  In other cases it is  purely internal.
    public init(
        query: String? = nil, queryType: QueryType? = nil, queryTime: Int32? = nil, numResults: Int32? = nil,
        top: Int32? = nil, skip: Int32? = nil, totalResults: Int32? = nil, fuzzyLevel: Int32? = nil,
        geoBias: LatLongPairAbbreviated? = nil
    ) {
        self.query = query
        self.queryType = queryType
        self.queryTime = queryTime
        self.numResults = numResults
        self.top = top
        self.skip = skip
        self.totalResults = totalResults
        self.fuzzyLevel = fuzzyLevel
        self.geoBias = geoBias
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case query = "query"
        case queryType = "queryType"
        case queryTime = "queryTime"
        case numResults = "numResults"
        case top = "limit"
        case skip = "offset"
        case totalResults = "totalResults"
        case fuzzyLevel = "fuzzyLevel"
        case geoBias = "geoBias"
    }

    /// Initialize a `SearchSummary` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.query = try? container.decode(String.self, forKey: .query)
        self.queryType = try? container.decode(QueryType.self, forKey: .queryType)
        self.queryTime = try? container.decode(Int32.self, forKey: .queryTime)
        self.numResults = try? container.decode(Int32.self, forKey: .numResults)
        self.top = try? container.decode(Int32.self, forKey: .top)
        self.skip = try? container.decode(Int32.self, forKey: .skip)
        self.totalResults = try? container.decode(Int32.self, forKey: .totalResults)
        self.fuzzyLevel = try? container.decode(Int32.self, forKey: .fuzzyLevel)
        self.geoBias = try? container.decode(LatLongPairAbbreviated.self, forKey: .geoBias)
    }

    /// Encode a `SearchSummary` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if query != nil { try? container.encode(query, forKey: .query) }
        if queryType != nil { try? container.encode(queryType, forKey: .queryType) }
        if queryTime != nil { try? container.encode(queryTime, forKey: .queryTime) }
        if numResults != nil { try? container.encode(numResults, forKey: .numResults) }
        if top != nil { try? container.encode(top, forKey: .top) }
        if skip != nil { try? container.encode(skip, forKey: .skip) }
        if totalResults != nil { try? container.encode(totalResults, forKey: .totalResults) }
        if fuzzyLevel != nil { try? container.encode(fuzzyLevel, forKey: .fuzzyLevel) }
        if geoBias != nil { try? container.encode(geoBias, forKey: .geoBias) }
    }
}
