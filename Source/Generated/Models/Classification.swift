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

/// The classification for the POI being returned
public struct Classification: Codable, Swift.Error {
    // MARK: Properties

    /// Code property
    public let code: String?
    /// Names array
    public let names: [ClassificationName]?

    // MARK: Initializers

    /// Initialize a `Classification` structure.
    /// - Parameters:
    ///   - code: Code property
    ///   - names: Names array
    public init(
        code: String? = nil, names: [ClassificationName]? = nil
    ) {
        self.code = code
        self.names = names
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case code = "code"
        case names = "names"
    }

    /// Initialize a `Classification` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try? container.decode(String.self, forKey: .code)
        self.names = try? container.decode([ClassificationName].self, forKey: .names)
    }

    /// Encode a `Classification` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if code != nil { try? container.encode(code, forKey: .code) }
        if names != nil { try? container.encode(names, forKey: .names) }
    }
}