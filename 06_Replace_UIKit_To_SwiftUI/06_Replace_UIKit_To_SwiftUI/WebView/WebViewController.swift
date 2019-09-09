//
//  WebViewController.swift
//  06_Replace_UIKit_To_SwiftUI
//
//  Created by satoutakeshi on 2019/09/08.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var urlString: String {
        didSet {
            request()
        }
    }
    
    private lazy var webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return webView
    }()
    
    init(urlString: String) {
        self.urlString = urlString
        super.init(nibName: "WebViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        request()
    }
    
    func update(urlString: String){
        self.urlString = urlString
    }
    
    private func request() {
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
