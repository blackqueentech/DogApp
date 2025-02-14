//
//  DogAppApp.swift
//  DogApp
//
//  Created by Della Anjeh on 2/13/25.
//

import SwiftUI

@main
struct DogAppApp: App {
    var body: some Scene {
        WindowGroup {
            ListView(listViewModel: ListViewModel())
        }
    }
}
