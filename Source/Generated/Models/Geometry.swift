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

/// Information about the geometric shape of the result. Only present if type == Geography.
public struct Geometry: Codable, Swift.Error {
    // MARK: Properties

    /// Pass this as geometryId to the [Get Search Polygon](https://docs.microsoft.com/rest/api/maps/search/getsearchpolygon) API to fetch geometry information for this result.
    public let id: String?

    // MARK: Initializers

    /// Initialize a `Geometry` structure.
    /// - Parameters:
    ///   - id: Pass this as geometryId to the [Get Search Polygon](https://docs.microsoft.com/rest/api/maps/search/getsearchpolygon) API to fetch geometry information for this result.
    public init(
        id: String? = nil
    ) {
        self.id = id
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case id = "id"
    }

    /// Initialize a `Geometry` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try? container.decode(String.self, forKey: .id)
    }

    /// Encode a `Geometry` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try? container.encode(id, forKey: .id) }
    }
}