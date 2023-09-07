//
//  ThirdScreen.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//

import SwiftUI

struct ThirdScreen: View {
    @State var isVisible: Bool = false
    var body: some View {
        Button {
            isVisible.toggle()
        } label: {
            Text("Модальное окно")
                .padding()
                .background(Color.gray)
                .foregroundColor(.black)
                .font(.title)
                .cornerRadius(20)
        }
        .sheet(isPresented: $isVisible) {
            HStack {
                Spacer(minLength: 20)
                Button {
                    isVisible.toggle()
                } label: {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                        .foregroundColor(.red)
                        .padding([.top, .trailing], 8)
                }

            }
            if let url = URL(string: "https://www.appcoda.com") {
                UIWebView(url: url)
            }
        }

    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
