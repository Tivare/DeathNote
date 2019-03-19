//
//  TableViewCell.swift
//  d02
//
//  Created by Anna BIBYK on 1/17/19.
//  Copyright © 2019 Anna BIBYK. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var name : (String, String, String)? {
        didSet {
            if let index = name {
                nameLabel?.text = index.0
                descriptionLabel?.text = index.1
                dateLabel?.text = index.2
            }
        }
    }
}
