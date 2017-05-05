//
//  ViewController.swift
//  SimpleCustomTableCell
//
//  Created by Solutions on 2/5/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cellIdentifier = "switchTableViewCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! SwitchTableViewCell
            
            cell.setValues("Switch ON", switchVal: true, target: "flipValueChange:")
            return cell
        case 1:
            let cellIdentifier = "textTableViewCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! TextTableViewCell
            
            cell.setValues("Random text", text: "Hello")
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    func flipValueChange(sender: UISwitch) {
        NSLog("Current Value: \(sender.on)")
    }

}

