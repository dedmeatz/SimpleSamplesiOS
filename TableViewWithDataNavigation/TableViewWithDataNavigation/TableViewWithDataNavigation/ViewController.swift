//
//  ViewController.swift
//  TableViewWithDataNavigation
//
//  Created by Solutions on 27/4/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tempData = ["one","two","three"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tempData.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier: String = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        
        if(cell == nil){
            cell = UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
        }
        
        cell?.textLabel?.text = self.tempData[indexPath.row]
        
        return cell!;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil);
        let secondViewController = storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        secondViewController.displayText = tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
        self.navigationController?.pushViewController(secondViewController, animated: true);
    }
}

