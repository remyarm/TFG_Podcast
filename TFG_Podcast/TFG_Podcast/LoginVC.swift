//
//  ViewController.swift
//  TFG_Podcast
//
//  Created by Murukesan, R. (Remya) on 20/6/20.
//  Copyright © 2020 Murukesan, R. (Remya). All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var loginWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.hackingwithswift.com")!
        loginWebView.load(URLRequest(url: url))
        loginWebView.allowsBackForwardNavigationGestures = true
    }


}

