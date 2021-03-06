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

/// Opening hours for a POI (Points of Interest).
public struct OperatingHours: Codable, Swift.Error {
    // MARK: Properties

    /// Value used in the request: none or "nextSevenDays"
    public let mode: String?
    /// List of time ranges for the next 7 days
    public let timeRanges: [OperatingHoursTimeRange]?

    // MARK: Initializers

    /// Initialize a `OperatingHours` structure.
    /// - Parameters:
    ///   - mode: Value used in the request: none or "nextSevenDays"
    ///   - timeRanges: List of time ranges for the next 7 days
    public init(
        mode: String? = nil, timeRanges: [OperatingHoursTimeRange]? = nil
    ) {
        self.mode = mode
        self.timeRanges = timeRanges
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case mode = "mode"
        case timeRanges = "timeRanges"
    }

    /// Initialize a `OperatingHours` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.mode = try? container.decode(String.self, forKey: .mode)
        self.timeRanges = try? container.decode([OperatingHoursTimeRange].self, forKey: .timeRanges)
    }

    /// Encode a `OperatingHours` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if mode != nil { try? container.encode(mode, forKey: .mode) }
        if timeRanges != nil { try? container.encode(timeRanges, forKey: .timeRanges) }
    }
}
