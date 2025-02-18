//
//  ListViewModel.swift
//  DogApp
//  contains the CRUD/network calls for the JSON objects
//  Created by Della Anjeh on 2/13/25.
//

import Observation

@Observable
class ListViewModel {
  enum State: Equatable {
    case loading
    case loaded(breeds: [Breed])
    case error
  }

  var state: State = .loading

  func loadBreeds() async {
    let breeds = await BreedLoader.loadBreeds()
    if let breeds {
      state = .loaded(breeds: breeds)
    } else {
      state = .error
    }
  }
}
