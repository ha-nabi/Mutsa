//
//  WebView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import WebKit
import UIKit
import SwiftUI

struct MyWebview: UIViewRepresentable {
    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView { //웹뷰 반환
        guard let url = URL(string: self.urlToLoad) else{
            return WKWebView()
        }

        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        return webview
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {

    }

}
