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

/// Optional section. Reference ids for use with the [Get Search Polygon](https://docs.microsoft.com/rest/api/maps/search/getsearchpolygon) API.
public struct DataSources: Codable, Swift.Error {
    // MARK: Properties

    /// Information about the geometric shape of the result. Only present if type == Geography.
    public let geometry: Geometry?

    // MARK: Initializers

    /// Initialize a `DataSources` structure.
    /// - Parameters:
    ///   - geometry: Information about the geometric shape of the result. Only present if type == Geography.
    public init(
        geometry: Geometry? = nil
    ) {
        self.geometry = geometry
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case geometry = "geometry"
    }

    /// Initialize a `DataSources` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.geometry = try? container.decode(Geometry.self, forKey: .geometry)
    }

    /// Encode a `DataSources` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if geometry != nil { try? container.encode(geometry, forKey: .geometry) }
    }
}
