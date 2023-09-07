//
//  ContentView.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            FirstScreen(tabIndex: $tabSelection)
                .tabItem {
                    Label("Main", systemImage: "house")
                }
                .tag(0)
            SecondScreen()
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
                .tag(1)
            ThirdScreen()
                .tabItem {
                    Label("About", systemImage: "globe")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
