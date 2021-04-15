//
//  File.swift
//  Evidencia 2
//
//  Created by user172369 on 4/14/21.
//  Copyright © 2021 user172369. All rights reserved.
//

import UIKit

class tableViewController : UITableViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animaTable()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Base de datos \(indexPath.row)"
        
        return cell
    }
    
    func animaTable(){
        tableView.reloadData()
        let cells = tableView.visibleCells
        
        let tableViewHeight = tableView.bounds.size.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        
        var delatCounter = 0
        
        for cell in cells {
            UIView.animate(withDuration: 1.75, delay: Double (delatCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delatCounter += 1
        }
    }
}
