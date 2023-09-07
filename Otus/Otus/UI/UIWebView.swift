//
//  UIWebView.swift
//  Otus
//
//  Created by Ardak Boranov on 07.09.2023.
//


import SwiftUI
import WebKit
 
struct UIWebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
