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

/// A valid `GeoJSON MultiLineString` geometry type. Please refer to [RFC 7946](https://tools.ietf.org/html/rfc7946#section-3.1.5) for details.
public struct GeoJsonMultiLineString: Codable {
    // MARK: Properties

    /// Specifies the `GeoJSON` type. Must be one of the nine valid GeoJSON object types - Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection, Feature and FeatureCollection.
    public let type: GeoJsonObjectType
    /// Coordinates for the `GeoJson MultiLineString` geometry.
    public let coordinates: [[[Double]]]

    // MARK: Initializers

    /// Initialize a `GeoJsonMultiLineString` structure.
    /// - Parameters:
    ///   - type: Specifies the `GeoJSON` type. Must be one of the nine valid GeoJSON object types - Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection, Feature and FeatureCollection.
    ///   - coordinates: Coordinates for the `GeoJson MultiLineString` geometry.
    public init(
        type: GeoJsonObjectType, coordinates: [[[Double]]]
    ) {
        self.type = type
        self.coordinates = coordinates
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case coordinates = "coordinates"
    }

    /// Initialize a `GeoJsonMultiLineString` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(GeoJsonObjectType.self, forKey: .type)
        self.coordinates = try container.decode([[[Double]]].self, forKey: .coordinates)
    }

    /// Encode a `GeoJsonMultiLineString` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(coordinates, forKey: .coordinates)
    }
}
