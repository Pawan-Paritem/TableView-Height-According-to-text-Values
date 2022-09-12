//
//  CustomTableViewCell.swift
//  TableViewMultipleStringWithLabel
//
//  Created by Ninesol Tech on 19/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
