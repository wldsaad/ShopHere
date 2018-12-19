//
//  CategoriesCell.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catLabel: UILabel!
    
    
    func updateViews(category: CategoryModel){
        self.catImage.image = UIImage(named: category.image)
        self.catLabel.text = category.name
    }

}
