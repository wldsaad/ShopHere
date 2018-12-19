//
//  ProductsCell.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {

    @IBOutlet weak var prodImage: UIImageView!
    @IBOutlet weak var prodName: UILabel!
    @IBOutlet weak var prodPrice: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateViews(product: ProductsModel){
        self.prodImage.image = UIImage(named: product.image)
        self.prodName.text = product.name
        self.prodPrice.text = String("$\(product.price)")
    }
    
}
