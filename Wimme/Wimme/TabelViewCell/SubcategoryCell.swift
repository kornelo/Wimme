//
//  SubcategoryCell.swift
//  Wimme
//
//  Created by Tom on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit

class SubcategoryCell: UITableViewCell {

    @IBOutlet weak var subcategoryLabel: UILabel!
    @IBOutlet weak var subcategoryImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
