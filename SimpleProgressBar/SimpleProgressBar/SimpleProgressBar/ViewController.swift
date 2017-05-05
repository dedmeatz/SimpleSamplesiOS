//
//  ViewController.swift
//  SimpleProgressBar
//
//  Created by Solutions on 2/5/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLConnectionDataDelegate, UIWebViewDelegate {
    
    //for url
    var url: String!
    //for data
    var response:NSURLResponse?
    var fileData:NSMutableData = NSMutableData();
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let finalURL = NSURL(string: "http://\(url)/")
        
        self.progressView.hidden = true;
        self.progressView.progress = 0;
        
        self.webView.loadRequest(NSURLRequest(URL: finalURL!))
    }
    
    //for data
    
    func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse) {
        self.response = response
    }
    
    func connection(connection: NSURLConnection, didReceiveData data: NSData) {
        self.fileData.appendData(data);
        self.progressView.progress = 100.0/Float((self.response?.expectedContentLength)!)*Float(self.fileData.length)/100.0
        if(self.progressView.progress == 1){
            self.progressView.hidden = true;
        }
        else{
            self.progressView.hidden = false;
        }
    }
    
    //for url
    
    func webViewDidStartLoad(webView: UIWebView) {
        self.progressView.hidden = false
        self.progressView.setProgress(0.3, animated: true)
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        self.progressView.setProgress(1.0, animated: true)
        self.progressView.progress = 0.0
        self.progressView.hidden = true
    }


}

