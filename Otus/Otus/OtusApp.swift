//
//  OtusApp.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//

import SwiftUI

@main
struct OtusApp: App {
    @State var viewModel: ListViewModel = .shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
