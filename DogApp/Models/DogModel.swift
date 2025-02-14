//
//  DogModel.swift
//  DogApp
//
//  Created by Della Anjeh on 2/13/25.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)
import Foundation

struct Welcome: Codable {
    let breeds: [DogModel]
    let id: String
    let url: String
    let width, height: Int
}

// MARK: - DogModel
struct DogModel: Codable, Identifiable {
    let id, name: String
    let bredFor: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case bredFor = "bred_for"
    }
}


