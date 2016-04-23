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

    @IBOutlet var webView: UIWebView!
    
    
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
        self.webView.loadRequest(NSURLRequest(URL: path))
    }

}

