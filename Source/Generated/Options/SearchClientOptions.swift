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

/// User-configurable client options.
public struct SearchClientOptions: ClientOptions {
    /// The API version of the client to invoke.
    public let apiVersion: String
    /// The `ClientLogger` to be used by this client.
    public let logger: ClientLogger
    /// Options for configuring telemetry sent by this client.
    public let telemetryOptions: TelemetryOptions
    /// Global transport options
    public let transportOptions: TransportOptions
    /// The default dispatch queue on which to call all completion handler. Defaults to `DispatchQueue.main`.
    public let dispatchQueue: DispatchQueue?

    /// API version of the  to invoke. Defaults to the latest.
    public enum ApiVersion: RequestStringConvertible {
        /// Custom value for unrecognized enum values
        case custom(String)
        /// API version "1.0"
        case v10

        /// The most recent API version of the
        public static var latest: ApiVersion {
            return .v10
        }

        public var requestString: String {
            switch self {
            case let .custom(val):
                return val
            case .v10:
                return "1.0"
            }
        }

        public init(_ val: String) {
            switch val.lowercased() {
            case "1.0":
                self = .v10
            default:
                self = .custom(val)
            }
        }
    }

    /// Initialize a `SearchClientOptions` structure.
    /// - Parameters:
    ///   - apiVersion: The API version of the client to invoke.
    ///   - logger: The `ClientLogger` to be used by this client.
    ///   - telemetryOptions: Options for configuring telemetry sent by this client.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: The default dispatch queue on which to call all completion handler. Defaults to `DispatchQueue.main`.
    public init(
        apiVersion: SearchClientOptions.ApiVersion = .latest,
        logger: ClientLogger = ClientLoggers.default(tag: "Search"),
        telemetryOptions: TelemetryOptions = TelemetryOptions(),
        transportOptions: TransportOptions? = nil,
        dispatchQueue: DispatchQueue? = nil
    ) {
        self.apiVersion = apiVersion.requestString
        self.logger = logger
        self.telemetryOptions = telemetryOptions
        self.transportOptions = transportOptions ?? TransportOptions()
        self.dispatchQueue = dispatchQueue
    }
}
