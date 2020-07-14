//
//  ViewController.swift
//  TFG_Podcast
//
//  Created by Murukesan, R. (Remya) on 20/6/20.
//  Copyright © 2020 Murukesan, R. (Remya). All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var loginWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://hclo365.sharepoint.com/sites/KXTechOffice/TFG/_layouts/15/listfeed.aspx?List=%7bC6B5AE9B-02F2-49F8-A979-BE766A08893D%7d&Source=https%3a%2f%2fhclo365.sharepoint.com%2fsites%2fKXTechOffice%2fTFG%2fLists%2fTFG%2520TechTalks%2520Podcast%2520List%2fAllItems.aspx&CT=1592637866462&OR=OWA-NT&CID=7b866810-363e-3426-b19a-733db38b5757#1")!
        loginWebView.load(URLRequest(url: url))
        loginWebView.allowsBackForwardNavigationGestures = true
        loginWebView.navigationDelegate = self
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        print(webView.data)
        webView.evaluateJavaScript("document.documentElement.outerHTML.toString()",
                                   completionHandler: { (html: Any?, error: Error?) in
                                    print(html ?? "")
        })
    }

}

