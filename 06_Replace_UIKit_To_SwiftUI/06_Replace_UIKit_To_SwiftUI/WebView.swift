//
//  WebView.swift
//  06_Replace_UIKit_To_SwiftUI
//
//  Created by satoutakeshi on 2019/09/09.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @Binding var urlString: String
    typealias UIViewType = WKWebView
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView(frame: .zero)
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

