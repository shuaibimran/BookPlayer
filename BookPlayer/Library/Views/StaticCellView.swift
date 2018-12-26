//
//  StaticCellView.swift
//  BookPlayer
//
//  Created by Gianni Carlo on 12/21/18.
//  Copyright © 2018 Tortuga Power. All rights reserved.
//

import Themeable
import UIKit

class StaticCellView: UITableViewCell {
    @IBOutlet weak var customLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpTheming()
    }
}

extension StaticCellView: Themeable {
    func applyTheme(_ theme: Theme) {
        self.textLabel?.textColor = theme.titleColor
        self.customLabel?.textColor = theme.titleColor
        self.detailTextLabel?.textColor = theme.descriptionColor
        self.backgroundColor = theme.cellColor
    }
}
