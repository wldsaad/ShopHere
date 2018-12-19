//
//  DataService.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

class DataService{
    static let instance = DataService()
    private let categories: [CategoryModel] = [
        CategoryModel(image: "hats", name: "Hats"),
        CategoryModel(image: "hoodies", name: "Hoodies"),
        CategoryModel(image: "shirts", name: "Shirts")
    ]
    
    func getCategories() -> [CategoryModel]{
        return categories
    }
    
    private let shirts: [ProductsModel] = [
        ProductsModel(image: "shirt01", name: "Shirt 01", price: 20),
        ProductsModel(image: "shirt02", name: "Shirt 02", price: 21),
        ProductsModel(image: "shirt03", name: "Shirt 03", price: 22),
        ProductsModel(image: "shirt04", name: "Shirt 04", price: 23),
        ProductsModel(image: "shirt05", name: "Shirt 05", price: 24)
    ]
    
    private let hoodies: [ProductsModel] = [
        ProductsModel(image: "hoodie01", name: "Hoodie 01", price: 30),
        ProductsModel(image: "hoodie02", name: "Hoodie 02", price: 31),
        ProductsModel(image: "hoodie03", name: "Hoodie 03", price: 32),
        ProductsModel(image: "hoodie04", name: "Hoodie 04", price: 33)
    ]
    
    private let hats: [ProductsModel] = [
        ProductsModel(image: "hat01", name: "Hat 01", price: 10),
        ProductsModel(image: "hat02", name: "Hat 02", price: 11),
        ProductsModel(image: "hat03", name: "Hat 03", price: 12),
        ProductsModel(image: "hat04", name: "Hat 04", price: 13)
    ]
    
    
    func getProducts(categorytitle: String) -> [ProductsModel] {
        switch categorytitle {
        case "Shirts":
            return shirts
        case "Hoodies":
            return hoodies
        case "Hats":
            return hats
        default:
            return [ProductsModel]()
        }
    }
}
