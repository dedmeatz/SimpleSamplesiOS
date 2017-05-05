//
//  SwitchTableViewCell.swift
//  SimpleCustomTableCell
//
//  Created by Solutions on 2/5/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var flipSwitch: UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setValues(labelText: String, switchVal: Bool, target:String) {
        self.label.text = labelText
        self.flipSwitch.on = switchVal
        if(target != ""){
            self.flipSwitch.addTarget(nil, action: Selector(target), forControlEvents: UIControlEvents.ValueChanged)
        }
    }

}
