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

/// Name for the classification
public struct ClassificationName: Codable, Swift.Error {
    // MARK: Properties

    /// Name Locale property
    public let nameLocale: String?
    /// Name property
    public let name: String?

    // MARK: Initializers

    /// Initialize a `ClassificationName` structure.
    /// - Parameters:
    ///   - nameLocale: Name Locale property
    ///   - name: Name property
    public init(
        nameLocale: String? = nil, name: String? = nil
    ) {
        self.nameLocale = nameLocale
        self.name = name
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case nameLocale = "nameLocale"
        case name = "name"
    }

    /// Initialize a `ClassificationName` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nameLocale = try? container.decode(String.self, forKey: .nameLocale)
        self.name = try? container.decode(String.self, forKey: .name)
    }

    /// Encode a `ClassificationName` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if nameLocale != nil { try? container.encode(nameLocale, forKey: .nameLocale) }
        if name != nil { try? container.encode(name, forKey: .name) }
    }
}