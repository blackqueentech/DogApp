//
//  ListView.swift
//  DogApp
//
//  Created by Della Anjeh on 2/13/25.
//

import SwiftUI

struct ListView: View {
    
    private var listViewModel = ListViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                switch listViewModel.state {
                case .loading:
                    ProgressView()
                case .loaded(let breeds):
                    list(of: breeds)
                case .error:
                    Text("something is wrong")
                }
            }
             .navigationTitle("Dog Breeds")
           }
            .task {
                await listViewModel.loadBreeds()
            }
        }
    }

func list(of breeds: [Breed]) -> some View {
    List(breeds) { breed in
        Text(breed.name)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
