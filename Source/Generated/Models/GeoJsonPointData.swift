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

/// Data contained by a `GeoJson Point`.
public struct GeoJsonPointData: Codable {
    // MARK: Properties

    /// A `Position` is an array of numbers with two or more elements. The first two elements are _longitude_ and _latitude_, precisely in that order. _Altitude/Elevation_ is an optional third element. Please refer to [RFC 7946](https://tools.ietf.org/html/rfc7946#section-3.1.1) for details.
    public let coordinates: [Double]

    // MARK: Initializers

    /// Initialize a `GeoJsonPointData` structure.
    /// - Parameters:
    ///   - coordinates: A `Position` is an array of numbers with two or more elements. The first two elements are _longitude_ and _latitude_, precisely in that order. _Altitude/Elevation_ is an optional third element. Please refer to [RFC 7946](https://tools.ietf.org/html/rfc7946#section-3.1.1) for details.
    public init(
        coordinates: [Double]
    ) {
        self.coordinates = coordinates
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case coordinates = "coordinates"
    }

    /// Initialize a `GeoJsonPointData` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinates = try container.decode([Double].self, forKey: .coordinates)
    }

    /// Encode a `GeoJsonPointData` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(coordinates, forKey: .coordinates)
    }
}