//
//  WorkingTableViewCell.swift
//  AutoSizeTableViewCell
//
//  Created by George M. Ceaser Jr on 5/15/15.
//  Copyright (c) 2015 George M. Ceaser Jr. All rights reserved.
//

import UIKit

class WorkingTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var addressLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
