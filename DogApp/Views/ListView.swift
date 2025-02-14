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
            ScrollView {
                List {
                    ForEach(listViewModel.dogs, id: \.id) { dog in
                        VStack {
                            Text(dog.name)
                                .foregroundStyle(.black)
                                .font(.headline)
                        }
                    }
                }
            }
            .task {
                await listViewModel.getDogs()
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView(listViewModel: ListViewModel())
    }
}
