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

/// The entry point for the POI being returned.
public struct EntryPoint: Codable, Swift.Error {
    // MARK: Properties

    /// The type of entry point. Value can be either _main_ or _minor_.
    public let type: EntryPointType?
    /// A location represented as a latitude and longitude using short names 'lat' & 'lon'.
    public let position: LatLongPairAbbreviated?

    // MARK: Initializers

    /// Initialize a `EntryPoint` structure.
    /// - Parameters:
    ///   - type: The type of entry point. Value can be either _main_ or _minor_.
    ///   - position: A location represented as a latitude and longitude using short names 'lat' & 'lon'.
    public init(
        type: EntryPointType? = nil, position: LatLongPairAbbreviated? = nil
    ) {
        self.type = type
        self.position = position
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case position = "position"
    }

    /// Initialize a `EntryPoint` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try? container.decode(EntryPointType.self, forKey: .type)
        self.position = try? container.decode(LatLongPairAbbreviated.self, forKey: .position)
    }

    /// Encode a `EntryPoint` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if type != nil { try? container.encode(type, forKey: .type) }
        if position != nil { try? container.encode(position, forKey: .position) }
    }
}
