//
//  CustomTableViewCell.swift
//  QassimChalets
//
//  Created by Yousef on 12/3/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var symbol: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
