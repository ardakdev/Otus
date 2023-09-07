//
//  SecondScreen.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//

import SwiftUI

struct SecondScreen: View {
    @EnvironmentObject var viewModel: ListViewModel
    @State var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            List(viewModel.favorites, id: \.id) { item in
                NavigationLink(value: item) {
                    HStack {
                        Image(item.iconName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .foregroundColor(.accentColor)
                        Text(item.title)
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        isPresented.toggle()
                        viewModel.selectedFavorive = item
                    }
                }

                .navigationDestination(isPresented: $isPresented) {
                    VStack {
                        Text("Opened additional screen for:")
                        Text(viewModel.selectedFavorive?.title ?? "")
                    }
                }
            }
        }
        .onAppear {
            if viewModel.selectedFavorive != nil {
                isPresented = true
            }
        }
        .onDisappear {
            isPresented = false
            viewModel.selectedFavorive = nil
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
