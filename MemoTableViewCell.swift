//
//  MemoTableViewCell.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/28.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

class MemoTableViewCell: UITableViewCell {
   
    @IBOutlet weak var titleLabel: UILabel!
    
        override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
             titleLabel.numberOfLines = 0
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
   
}
