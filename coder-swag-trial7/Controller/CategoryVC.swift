//
//  ViewController.swift
//  coder-swag-trial7
//
//  Created by Waleed Saad on 11/29/18.
//  Copyright © 2018 Waleed Saad. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController {
    
    //OUTLETS
    @IBOutlet weak var categoryTableView: UITableView!
    
    //VARIABLES
    private var categories: [CategoryModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        categories = DataService.instance.getCategories()
    }
}

//EXTENSIONS
//TABLEVIEW DATASOURCE
extension CategoryVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoriesCell {
            cell.updateViews(category: categories[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }
        return CategoriesCell()
    }
}

//TABLEVIEW DELEGATE
extension CategoryVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        performSegue(withIdentifier: "productsSegue", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            productsVC.updateProducts(category: sender as! CategoryModel)
        }
    }
}
