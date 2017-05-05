//
//  SecondViewController.swift
//  TableViewWithDataNavigation
//
//  Created by Solutions on 27/4/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var displayText: String?

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.displayLabel.text = displayText
    }
    
}
