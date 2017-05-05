//
//  ViewController.swift
//  SimpleWebView
//
//  Created by Solutions on 27/4/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hitURL(sender: AnyObject) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let webViewController = storyboard.instantiateViewControllerWithIdentifier("WebViewController") as! WebViewController
        webViewController.url = textAddress.text
        
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
}

