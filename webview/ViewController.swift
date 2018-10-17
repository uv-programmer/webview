//
//  ViewController.swift
//  webview
//
//  Created by Vishnu u on 31/07/18.
//  Copyright © 2018 Vishnu u. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController,WKNavigationDelegate {
var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "paste url here")!
        webView.load(URLRequest(url: url))
        // Do any additional setup after loading the view, typically from a nib.
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh , target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

