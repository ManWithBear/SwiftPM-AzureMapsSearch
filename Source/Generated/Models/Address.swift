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

/// The address of the result
public struct Address: Codable, Swift.Error {
    // MARK: Properties

    /// The building number on the street. DEPRECATED, use streetNumber instead.
    public let buildingNumber: String?
    /// The street name. DEPRECATED, use streetName instead.
    public let street: String?
    /// The name of the street being crossed.
    public let crossStreet: String?
    /// The building number on the street.
    public let streetNumber: String?
    /// The codes used to unambiguously identify the street
    public let routeNumbers: [Int32]?
    /// The street name.
    public let streetName: String?
    /// The street name and number.
    public let streetNameAndNumber: String?
    /// City / Town
    public let municipality: String?
    /// Sub / Super City
    public let municipalitySubdivision: String?
    /// Named Area
    public let countryTertiarySubdivision: String?
    /// County
    public let countrySecondarySubdivision: String?
    /// State or Province
    public let countrySubdivision: String?
    /// Postal Code / Zip Code
    public let postalCode: String?
    /// Extended postal code (availability is dependent on the region).
    public let extendedPostalCode: String?
    /// Country (Note: This is a two-letter code, not a country name.)
    public let countryCode: String?
    /// Country name
    public let country: String?
    /// ISO alpha-3 country code
    public let countryCodeISO3: String?
    /// An address line formatted according to the formatting rules of a Result's country of origin, or in the case of a country, its full country name.
    public let freeformAddress: String?
    /// The full name of a first level of country administrative hierarchy. This field appears only in case countrySubdivision is presented in an abbreviated form. Only supported for USA, Canada, and Great Britain.
    public let countrySubdivisionName: String?
    /// An address component which represents the name of a geographic area or locality that groups a number of addressable objects for addressing purposes, without being an administrative unit. This field is used to build the `freeformAddress` property.
    public let localName: String?
    /// Bounding box coordinates.
    public let boundingBox: AnyObject?

    // MARK: Initializers

    /// Initialize a `Address` structure.
    /// - Parameters:
    ///   - buildingNumber: The building number on the street. DEPRECATED, use streetNumber instead.
    ///   - street: The street name. DEPRECATED, use streetName instead.
    ///   - crossStreet: The name of the street being crossed.
    ///   - streetNumber: The building number on the street.
    ///   - routeNumbers: The codes used to unambiguously identify the street
    ///   - streetName: The street name.
    ///   - streetNameAndNumber: The street name and number.
    ///   - municipality: City / Town
    ///   - municipalitySubdivision: Sub / Super City
    ///   - countryTertiarySubdivision: Named Area
    ///   - countrySecondarySubdivision: County
    ///   - countrySubdivision: State or Province
    ///   - postalCode: Postal Code / Zip Code
    ///   - extendedPostalCode: Extended postal code (availability is dependent on the region).
    ///   - countryCode: Country (Note: This is a two-letter code, not a country name.)
    ///   - country: Country name
    ///   - countryCodeISO3: ISO alpha-3 country code
    ///   - freeformAddress: An address line formatted according to the formatting rules of a Result's country of origin, or in the case of a country, its full country name.
    ///   - countrySubdivisionName: The full name of a first level of country administrative hierarchy. This field appears only in case countrySubdivision is presented in an abbreviated form. Only supported for USA, Canada, and Great Britain.
    ///   - localName: An address component which represents the name of a geographic area or locality that groups a number of addressable objects for addressing purposes, without being an administrative unit. This field is used to build the `freeformAddress` property.
    ///   - boundingBox: Bounding box coordinates.
    public init(
        buildingNumber: String? = nil, street: String? = nil, crossStreet: String? = nil, streetNumber: String? = nil,
        routeNumbers: [Int32]? = nil, streetName: String? = nil, streetNameAndNumber: String? = nil,
        municipality: String? = nil, municipalitySubdivision: String? = nil, countryTertiarySubdivision: String? = nil,
        countrySecondarySubdivision: String? = nil, countrySubdivision: String? = nil, postalCode: String? = nil,
        extendedPostalCode: String? = nil, countryCode: String? = nil, country: String? = nil,
        countryCodeISO3: String? = nil, freeformAddress: String? = nil, countrySubdivisionName: String? = nil,
        localName: String? = nil, boundingBox: AnyObject? = nil
    ) {
        self.buildingNumber = buildingNumber
        self.street = street
        self.crossStreet = crossStreet
        self.streetNumber = streetNumber
        self.routeNumbers = routeNumbers
        self.streetName = streetName
        self.streetNameAndNumber = streetNameAndNumber
        self.municipality = municipality
        self.municipalitySubdivision = municipalitySubdivision
        self.countryTertiarySubdivision = countryTertiarySubdivision
        self.countrySecondarySubdivision = countrySecondarySubdivision
        self.countrySubdivision = countrySubdivision
        self.postalCode = postalCode
        self.extendedPostalCode = extendedPostalCode
        self.countryCode = countryCode
        self.country = country
        self.countryCodeISO3 = countryCodeISO3
        self.freeformAddress = freeformAddress
        self.countrySubdivisionName = countrySubdivisionName
        self.localName = localName
        self.boundingBox = boundingBox
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case buildingNumber = "buildingNumber"
        case street = "street"
        case crossStreet = "crossStreet"
        case streetNumber = "streetNumber"
        case routeNumbers = "routeNumbers"
        case streetName = "streetName"
        case streetNameAndNumber = "streetNameAndNumber"
        case municipality = "municipality"
        case municipalitySubdivision = "municipalitySubdivision"
        case countryTertiarySubdivision = "countryTertiarySubdivision"
        case countrySecondarySubdivision = "countrySecondarySubdivision"
        case countrySubdivision = "countrySubdivision"
        case postalCode = "postalCode"
        case extendedPostalCode = "extendedPostalCode"
        case countryCode = "countryCode"
        case country = "country"
        case countryCodeISO3 = "countryCodeISO3"
        case freeformAddress = "freeformAddress"
        case countrySubdivisionName = "countrySubdivisionName"
        case localName = "localName"
        case boundingBox = "boundingBox"
    }

    /// Initialize a `Address` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.buildingNumber = try? container.decode(String.self, forKey: .buildingNumber)
        self.street = try? container.decode(String.self, forKey: .street)
        self.crossStreet = try? container.decode(String.self, forKey: .crossStreet)
        self.streetNumber = try? container.decode(String.self, forKey: .streetNumber)
        self.routeNumbers = try? container.decode([Int32].self, forKey: .routeNumbers)
        self.streetName = try? container.decode(String.self, forKey: .streetName)
        self.streetNameAndNumber = try? container.decode(String.self, forKey: .streetNameAndNumber)
        self.municipality = try? container.decode(String.self, forKey: .municipality)
        self.municipalitySubdivision = try? container.decode(String.self, forKey: .municipalitySubdivision)
        self.countryTertiarySubdivision = try? container.decode(String.self, forKey: .countryTertiarySubdivision)
        self.countrySecondarySubdivision = try? container.decode(String.self, forKey: .countrySecondarySubdivision)
        self.countrySubdivision = try? container.decode(String.self, forKey: .countrySubdivision)
        self.postalCode = try? container.decode(String.self, forKey: .postalCode)
        self.extendedPostalCode = try? container.decode(String.self, forKey: .extendedPostalCode)
        self.countryCode = try? container.decode(String.self, forKey: .countryCode)
        self.country = try? container.decode(String.self, forKey: .country)
        self.countryCodeISO3 = try? container.decode(String.self, forKey: .countryCodeISO3)
        self.freeformAddress = try? container.decode(String.self, forKey: .freeformAddress)
        self.countrySubdivisionName = try? container.decode(String.self, forKey: .countrySubdivisionName)
        self.localName = try? container.decode(String.self, forKey: .localName)
        //self.boundingBox = try? container.decode(AnyObject.self, forKey: .boundingBox)
        self.boundingBox = try? container.nestedUnkeyedContainer(forKey: .boundingBox) as AnyObject
    }

    /// Encode a `Address` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if buildingNumber != nil { try? container.encode(buildingNumber, forKey: .buildingNumber) }
        if street != nil { try? container.encode(street, forKey: .street) }
        if crossStreet != nil { try? container.encode(crossStreet, forKey: .crossStreet) }
        if streetNumber != nil { try? container.encode(streetNumber, forKey: .streetNumber) }
        if routeNumbers != nil { try? container.encode(routeNumbers, forKey: .routeNumbers) }
        if streetName != nil { try? container.encode(streetName, forKey: .streetName) }
        if streetNameAndNumber != nil { try? container.encode(streetNameAndNumber, forKey: .streetNameAndNumber) }
        if municipality != nil { try? container.encode(municipality, forKey: .municipality) }
        if municipalitySubdivision !=
            nil { try? container.encode(municipalitySubdivision, forKey: .municipalitySubdivision) }
        if countryTertiarySubdivision !=
            nil { try? container.encode(countryTertiarySubdivision, forKey: .countryTertiarySubdivision) }
        if countrySecondarySubdivision !=
            nil { try? container.encode(countrySecondarySubdivision, forKey: .countrySecondarySubdivision) }
        if countrySubdivision != nil { try? container.encode(countrySubdivision, forKey: .countrySubdivision) }
        if postalCode != nil { try? container.encode(postalCode, forKey: .postalCode) }
        if extendedPostalCode != nil { try? container.encode(extendedPostalCode, forKey: .extendedPostalCode) }
        if countryCode != nil { try? container.encode(countryCode, forKey: .countryCode) }
        if country != nil { try? container.encode(country, forKey: .country) }
        if countryCodeISO3 != nil { try? container.encode(countryCodeISO3, forKey: .countryCodeISO3) }
        if freeformAddress != nil { try? container.encode(freeformAddress, forKey: .freeformAddress) }
        if countrySubdivisionName !=
            nil { try? container.encode(countrySubdivisionName, forKey: .countrySubdivisionName) }
        if localName != nil { try? container.encode(localName, forKey: .localName) }
        //if boundingBox != nil { try? container.encode(boundingBox, forKey: .boundingBox) }
    }
}
