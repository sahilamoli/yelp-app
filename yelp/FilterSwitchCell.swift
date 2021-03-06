//
//  FilterSwitchCell.swift
//  yelp
//
//  Created by Sahil Amoli on 9/21/14.
//  Copyright (c) 2014 Sahil Amoli. All rights reserved.
//

import UIKit

protocol FilterSwitchCellDelegate {
    func switchDidChange(filterSwitchCell: FilterSwitchCell, newValue: Bool)
}

class FilterSwitchCell: UITableViewCell {
    var delegate: FilterSwitchCellDelegate? = nil
    
    var currentValue: Bool = false
    var settingType = ""

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func handleChange(mySwitch: UISwitch) {
        currentValue = mySwitch.on
        self.delegate?.switchDidChange(self, newValue: currentValue)
    }
}
