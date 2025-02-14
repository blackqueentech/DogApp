//
//  ListViewModel.swift
//  DogApp
//  contains the CRUD/network calls for the JSON objects
//  Created by Della Anjeh on 2/13/25.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var dogs: [DogModel] = []
    
    let apiKey = "live_mP2JuJcv5l0H27RsikVmzY4GLStggdcUXYl0SyRjevuP57TYP0JB9gGr0d4VjIEh"
    
    func getDogs() async {
        let endpoint = "https://api.thedogapi.com/v1/images/search?limit=50?api_key=\(apiKey)"
        if let url = URL(string: endpoint) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                self.dogs = try decoder.decode([DogModel].self, from: data)
            } catch {
            }
        }
    }
}

enum DogError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}
