//
//  EventCell.swift
//  Wimme
//
//  Created by Tom on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventMinMax: UILabel!
    @IBOutlet weak var eventData: UILabel!
    @IBOutlet weak var eventDistance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
