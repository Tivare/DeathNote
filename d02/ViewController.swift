//
//  ViewController.swift
//  d02
//
//  Created by Anna BIBYK on 1/17/19.
//  Copyright © 2019 Anna BIBYK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var listCell: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.victims.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell") as! TableViewCell
        cell.name = Data.victims[indexPath.row]
        cell.nameLabel?.numberOfLines = 0
        cell.descriptionLabel?.numberOfLines = 0
        cell.dateLabel?.numberOfLines = 0
        listCell.rowHeight = UITableViewAutomaticDimension
        listCell.estimatedRowHeight = 44
        return cell
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

