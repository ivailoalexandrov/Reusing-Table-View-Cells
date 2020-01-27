//
//  ViewController.swift
//  Reusing Table View Cells
//
//  Created by Ivailo Alexandrov on 27.01.20.
//  Copyright © 2020 Ivailo Alexandrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // Table View Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Instantiate new Table View Cell
        let myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        // Set the contents
        myCell.textLabel?.text = "This is row number \(indexPath.row)"
        
        myCell.imageView?.image = UIImage(named: "clock")
        myCell.accessoryType = .disclosureIndicator
        myCell.detailTextLabel?.text = "This is some detail text"
        
        return myCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

