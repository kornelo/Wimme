//
//  SearchSubVC.swift
//  Wimme
//
//  Created by Tom on 12.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit

class SearchSubVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var categoryImage = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.png"]
    var categoryName = ["Sport", "Rozrywka", "Randka","Hobby", "Inne"]
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Subcategory", for: indexPath) as! SubcategoryCell
        cell.subcategoryImage.image = UIImage(named: categoryImage[indexPath.row] )
        cell.subcategoryLabel.text = categoryName[indexPath.row]
        
        
        return cell
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowEvent", sender: self)
        print("row selected: \(indexPath.row)")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowEvent" {
        }
    }
    

}
