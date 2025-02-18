// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dogModel = try? JSONDecoder().decode(DogModel.self, from: jsonData)

import Foundation

// MARK: - Breed
struct Breed: Codable, Equatable, Identifiable {
    var id: String { name }
    let name, countryCode, bredFor, lifeSpan: String
    let temperament, referenceImageID: String

    enum CodingKeys: String, CodingKey {
        case name
        case countryCode = "country_code"
        case bredFor = "bred_for"
        case lifeSpan = "life_span"
        case temperament
        case referenceImageID = "reference_image_id"
    }
}

