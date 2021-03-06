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

/// User-configurable options for the `ReverseSearchAddress` operation.
public struct ReverseSearchAddressOptions: RequestOptions {
    /// Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    public let language: String?
    /// Boolean. To enable return of the posted speed limit
    public let includeSpeedLimit: Bool?
    /// The directional heading of the vehicle in degrees, for travel along a segment of roadway. 0 is North, 90 is East and so on, values range from -360 to 360. The precision can include upto one decimal place
    public let heading: Int32?
    /// The radius in meters to for the results to be constrained to the defined area
    public let radiusInMeters: Int32?
    /// If a number is sent in along with the request, the response may include the side of the street (Left/Right) and also an offset position for that number
    public let number: String?
    /// Boolean. To enable return of the road use array for reverse geocodes at street level
    public let includeRoadUse: Bool?
    /// To restrict reverse geocodes to a certain type of road use. The road use array for reverse geocodes can be one or more of LimitedAccess, Arterial, Terminal, Ramp, Rotary, LocalStreet
    public let roadUse: [RoadUseType]?
    /// Format of newlines in the formatted address.
    /// If true, the address will contain newlines.
    /// If false, newlines will be converted to commas.
    public let allowFreeformNewline: Bool?
    /// Include information on the type of match the geocoder achieved in the response.
    public let includeMatchType: Bool?
    /// Specifies the level of filtering performed on geographies. Narrows the search for specified geography entity types, e.g. return only municipality. The resulting response will contain the geography ID as well as the entity type matched. If you provide more than one entity as a comma separated list, endpoint will return the 'smallest entity available'. Returned Geometry ID can be used to get the geometry of that geography via [Get Search Polygon](https://docs.microsoft.com/rest/api/maps/search/getsearchpolygon) API. The following parameters are ignored when entityType is set:
    /// * heading
    /// * number
    /// * returnRoadUse
    /// * returnSpeedLimit
    /// * roadUse
    /// * returnMatchType
    public let entityType: GeographicEntityType?
    /// The View parameter (also called the "user region" parameter) allows you to show the correct maps for a certain country/region for geopolitically disputed regions. Different countries have different views of such regions, and the View parameter allows your application to comply with the view required by the country your application will be serving. By default, the View parameter is set to ???Unified??? even if you haven???t defined it in  the request. It is your responsibility to determine the location of your users, and then set the View parameter correctly for that location. Alternatively, you have the option to set ???View=Auto???, which will return the map data based on the IP  address of the request. The View parameter in Azure Maps must be used in compliance with applicable laws, including those  regarding mapping, of the country where maps, images and other data and third party content that you are authorized to  access via Azure Maps is made available. Example: view=IN.
    /// Please refer to [Supported Views](https://aka.ms/AzureMapsLocalizationViews) for details and to see the available Views.
    public let localizedMapView: LocalizedMapView?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    public let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    public let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    public var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    public var context: PipelineContext?

    /// Initialize a `ReverseSearchAddressOptions` structure.
    /// - Parameters:
    ///   - language: Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    ///   - includeSpeedLimit: Boolean. To enable return of the posted speed limit
    ///   - heading: The directional heading of the vehicle in degrees, for travel along a segment of roadway. 0 is North, 90 is East and so on, values range from -360 to 360. The precision can include upto one decimal place
    ///   - radiusInMeters: The radius in meters to for the results to be constrained to the defined area
    ///   - number: If a number is sent in along with the request, the response may include the side of the street (Left/Right) and also an offset position for that number
    ///   - includeRoadUse: Boolean. To enable return of the road use array for reverse geocodes at street level
    ///   - roadUse: To restrict reverse geocodes to a certain type of road use. The road use array for reverse geocodes can be one or more of LimitedAccess, Arterial, Terminal, Ramp, Rotary, LocalStreet
    ///   - allowFreeformNewline: Format of newlines in the formatted address.
    /// If true, the address will contain newlines.
    /// If false, newlines will be converted to commas.
    ///   - includeMatchType: Include information on the type of match the geocoder achieved in the response.
    ///   - entityType: Specifies the level of filtering performed on geographies. Narrows the search for specified geography entity types, e.g. return only municipality. The resulting response will contain the geography ID as well as the entity type matched. If you provide more than one entity as a comma separated list, endpoint will return the 'smallest entity available'. Returned Geometry ID can be used to get the geometry of that geography via [Get Search Polygon](https://docs.microsoft.com/rest/api/maps/search/getsearchpolygon) API. The following parameters are ignored when entityType is set:
    /// * heading
    /// * number
    /// * returnRoadUse
    /// * returnSpeedLimit
    /// * roadUse
    /// * returnMatchType
    ///   - localizedMapView: The View parameter (also called the "user region" parameter) allows you to show the correct maps for a certain country/region for geopolitically disputed regions. Different countries have different views of such regions, and the View parameter allows your application to comply with the view required by the country your application will be serving. By default, the View parameter is set to ???Unified??? even if you haven???t defined it in  the request. It is your responsibility to determine the location of your users, and then set the View parameter correctly for that location. Alternatively, you have the option to set ???View=Auto???, which will return the map data based on the IP  address of the request. The View parameter in Azure Maps must be used in compliance with applicable laws, including those  regarding mapping, of the country where maps, images and other data and third party content that you are authorized to  access via Azure Maps is made available. Example: view=IN.
    /// Please refer to [Supported Views](https://aka.ms/AzureMapsLocalizationViews) for details and to see the available Views.
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    public init(
        language: String? = nil,
        includeSpeedLimit: Bool? = nil,
        heading: Int32? = nil,
        radiusInMeters: Int32? = nil,
        number: String? = nil,
        includeRoadUse: Bool? = nil,
        roadUse: [RoadUseType]? = nil,
        allowFreeformNewline: Bool? = nil,
        includeMatchType: Bool? = nil,
        entityType: GeographicEntityType? = nil,
        localizedMapView: LocalizedMapView? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.language = language
        self.includeSpeedLimit = includeSpeedLimit
        self.heading = heading
        self.radiusInMeters = radiusInMeters
        self.number = number
        self.includeRoadUse = includeRoadUse
        self.roadUse = roadUse
        self.allowFreeformNewline = allowFreeformNewline
        self.includeMatchType = includeMatchType
        self.entityType = entityType
        self.localizedMapView = localizedMapView
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
