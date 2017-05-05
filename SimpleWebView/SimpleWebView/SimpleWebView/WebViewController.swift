//
//  WebViewController.swift
//  SimpleWebView
//
//  Created by Solutions on 27/4/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    var url: String!
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TO-DO: make sure u check if https is entered or not
        let finalURL = NSURL(string: "http://\(url)/")
        
        self.webView.loadRequest(NSURLRequest(URL: finalURL!))
    }

}
