//
//  ViewController.swift
//  SimpleAlert
//
//  Created by mac on 26/4/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testToAlert: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func alertText(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: self.testToAlert.text, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //TO DO: hide keyboard

}

