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

/// The viewport that covers the result represented by the top-left and bottom-right coordinates of the viewport.
public struct BoundingBox: Codable {
    // MARK: Properties

    /// A location represented as a latitude and longitude using short names 'lat' & 'lon'.
    public let topLeft: LatLongPairAbbreviated?
    /// A location represented as a latitude and longitude using short names 'lat' & 'lon'.
    public let bottomRight: LatLongPairAbbreviated?

    // MARK: Initializers

    /// Initialize a `BoundingBox` structure.
    /// - Parameters:
    ///   - topLeft: A location represented as a latitude and longitude using short names 'lat' & 'lon'.
    ///   - bottomRight: A location represented as a latitude and longitude using short names 'lat' & 'lon'.
    public init(
        topLeft: LatLongPairAbbreviated? = nil, bottomRight: LatLongPairAbbreviated? = nil
    ) {
        self.topLeft = topLeft
        self.bottomRight = bottomRight
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case topLeft = "topLeftPoint"
        case bottomRight = "btmRightPoint"
    }

    /// Initialize a `BoundingBox` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.topLeft = try? container.decode(LatLongPairAbbreviated.self, forKey: .topLeft)
        self.bottomRight = try? container.decode(LatLongPairAbbreviated.self, forKey: .bottomRight)
    }

    /// Encode a `BoundingBox` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if topLeft != nil { try? container.encode(topLeft, forKey: .topLeft) }
        if bottomRight != nil { try? container.encode(bottomRight, forKey: .bottomRight) }
    }
}
