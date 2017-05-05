//
//  TextTableViewCell.swift
//  SimpleCustomTableCell
//
//  Created by Solutions on 2/5/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setValues(labelText: String, text: String) {
        self.label.text = labelText
        self.textField.text = text
    }

}
