//
//  ViewController.swift
//  simpeBrowser
//
//  Created by Jason.Allshorn on 2020/06/06.
//  Copyright © 2020 Jason.Allshorn. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://sendbird-sample-x.firebaseapp.com/?user=new_user_2")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }
    
    


}

