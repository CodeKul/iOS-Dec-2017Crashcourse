//
//  CustomTableViewCell.swift
//  CustomCell
//
//  Created by Varun on 26/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var profileImage : UIImageView!
    @IBOutlet var lblName : UILabel!
    @IBOutlet var lblDOB : UILabel!
    @IBOutlet var lblScore : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
