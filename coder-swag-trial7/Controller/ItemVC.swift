//
//  ItemVC.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 12/2/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

class ItemVC: UIViewController {

    
    //OUTLETS
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    //VARAIBALES
    private var product: ProductsModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    //INITIALIZE PRODUCT FROM PREVIOUS SCREEN
    func initProduct(product: ProductsModel){
        self.product = product
    }
    
    //UPDATE VIEW AFTER INITIALIZATION
    private func updateViews(){
        itemImageView.image = UIImage(named: product.image)
        nameLabel.text = product.name
        priceLabel.text = "$\(String(product.price))"
    }

}
