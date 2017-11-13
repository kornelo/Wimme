//
//  SearchSubVC.swift
//  Wimme
//
//  Created by Tom on 12.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit

class SearchSubVC: UIViewController {
    var categoryImage = ["1", "2", "3", "5", "6", "7"]
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryImage.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Category", for: indexPath) as! CategoryCell
        cell.categoryImage.image = UIImage(named: (categoryImage[indexPath.row] + ".jpg"))
        cell.categoryLabel.text = categoryImage[indexPath.row]
        
        
        return cell
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSubcategory", sender: self)
        print("row selected: \(indexPath.row)")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSubcategory" {
        }
    }
    

}
