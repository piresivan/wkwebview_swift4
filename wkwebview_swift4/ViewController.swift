//
//  ViewController.swift
//  wkwebview_swift4
//
//  Created by Ivan Santos on 14/10/17.
//  Copyright © 2017 Ivan Pires. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var containerView : UIView? = nil
    
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:"https://github.com/")
        let req = URLRequest(url: url!)
        self.webView!.load(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

