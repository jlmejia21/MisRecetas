//
//  RecipeDetailViewCell.swift
//  MisRecetas
//
//  Created by Jose Luis Mejia Rojas on 16/04/17.
//  Copyright © 2017 Jose Luis Mejia Rojas. All rights reserved.
//

import UIKit

class RecipeDetailViewCell: UITableViewCell {
    
    
    @IBOutlet var keyLabel: UILabel!
    
    @IBOutlet var valueLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
