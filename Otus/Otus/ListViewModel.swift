//
//  ListViewModel.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//

import Foundation
// MARK: - Model
struct Favorite: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let iconName: String
}

// MARK: - ViewModel
final class ListViewModel: ObservableObject {
    static let shared = ListViewModel()
    @Published var selectedFavorive: Favorite?
    @Published var favorites: [Favorite] = [
        Favorite(title: "Swift", iconName: "Swift"),
        Favorite(title: "SwiftUI", iconName: "SwiftUI"),
        Favorite(title: "Objective-C", iconName: "Objc")]
}
