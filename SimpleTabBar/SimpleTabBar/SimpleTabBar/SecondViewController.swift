//
//  SecondViewController.swift
//  SimpleTabBar
//
//  Created by mac on 9/5/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func savePerson(_ sender: Any) {
        PersonList.people.append(nameText.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
