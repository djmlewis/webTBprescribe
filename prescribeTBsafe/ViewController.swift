//
//  ViewController.swift
//  prescribeTBsafe
//
//  Created by David Lewis on 23/04/2016.
//  Copyright © 2016 djml.eu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    @IBOutlet weak var placeHolderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        guard
            let path = NSBundle.mainBundle().URLForResource("index", withExtension: "html", subdirectory: "site")
            else
        {
            return
        }
        
        let config = WKWebViewConfiguration()
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.preferences.javaScriptEnabled = true
        self.webView = WKWebView(frame: self.placeHolderView.frame, configuration: config)
        self.webView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.placeHolderView.removeFromSuperview()
        self.placeHolderView = nil
        self.view.addSubview(self.webView)
        self.webView.loadRequest(NSURLRequest(URL: path))
    }

}

