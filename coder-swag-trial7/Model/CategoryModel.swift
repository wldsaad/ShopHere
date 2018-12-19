//
//  CategoryModel.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import Foundation
struct CategoryModel {
    private(set) public var image: String
    private(set) public var name: String
    
    init(image: String, name: String) {
        self.image = image
        self.name = name
    }
}
