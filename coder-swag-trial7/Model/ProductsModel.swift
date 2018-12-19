//
//  ProductsModel.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

struct ProductsModel {
    private(set) public var image: String
    private(set) public var name: String
    private(set) public var price: Int
    
    init(image: String, name: String, price: Int) {
        self.image = image
        self.name = name
        self.price = price
    }
}

