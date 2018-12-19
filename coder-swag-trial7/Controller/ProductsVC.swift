//
//  ProductsVC.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    
    //OUTLETS
    @IBOutlet weak var productsCollectionView: UICollectionView!

    //VARIABLES
    private var products: [ProductsModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollectionView.dataSource = self
        productsCollectionView.delegate = self

    }
    
    //UPDATE PRODCUT NAME FRO PREVIOUS SCREEN
    func updateProducts(category: CategoryModel){
        products = DataService.instance.getProducts(categorytitle: category.name)
    }

}

//EXTENSIONS
//COLLECTIONVIEW DATASOURCE
extension ProductsVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productsCell", for: indexPath) as? ProductsCell {
            cell.updateViews(product: products[indexPath.row])
            return cell
        }
        
        return ProductsCell()
    }
}

//COLLECTIONVIEW DELEGATE
extension ProductsVC: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        performSegue(withIdentifier: "itemSegue", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let itemVC = segue.destination as? ItemVC {
            itemVC.initProduct(product: sender as! ProductsModel)
        }
    }
}
