//
//  FirstScreen.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//

import SwiftUI

struct FirstScreen: View {
    @Binding var tabIndex: Int
    @EnvironmentObject var viewModel: ListViewModel
    var body: some View {
        Button {
            viewModel.selectedFavorive = viewModel.favorites.first
            tabIndex = 1
        } label: {
            Text("Open additional view")
                .padding()
                .background(Color.gray)
                .foregroundColor(.black)
                .font(.title)
                .cornerRadius(20)
        }

    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tabIndex: .constant(0))
    }
}
