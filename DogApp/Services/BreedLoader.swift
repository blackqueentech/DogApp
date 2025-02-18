//
//  BreedLoader.swift
//  DogApp
//
//  Created by Della Anjeh on 2/17/25.
//

import Foundation

enum BreedLoader {
  static let apiKey = "live_mP2JuJcv5l0H27RsikVmzY4GLStggdcUXYl0SyRjevuP57TYP0JB9gGr0d4VjIEh"

  static func loadBreeds() async -> [Breed]? {
    if apiKey == "" {
      fatalError("No api key found.")
    }

    guard let url = URL(string: "https://api.thedogapi.com/v1/breeds?api_key=\(BreedLoader.apiKey)") else {
      return nil
    }

    do {
      let (jsonData, _) = try await URLSession.shared.data(from: url)
      let breeds = try JSONDecoder().decode([Breed].self, from: jsonData)
      return breeds
    } catch {
      return nil
    }
  }
}
