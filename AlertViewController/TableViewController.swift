//
//  TableViewController.swift
//  RealmTest
//
//  Created by 陳鍵群 on 2018/9/20.
//  Copyright © 2018年 陳鍵群. All rights reserved.
//

import UIKit

class TableViewControllerInAlertView:UITableViewController{
    var cells:[Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        var size:CGSize?
        cells = [1,2,3,4,5,6,7,8,9,10,11,12]
        
        if (cells.count < 4) {
            size = CGSize(width: 272, height: 100)
        }else if (cells.count < 6){
            size = CGSize(width: 272, height: 150)
        }else if (cells.count < 8){
            size = CGSize(width: 272, height: 200)
        }else{
            size = CGSize(width: 272, height: 250)
        }
        self.preferredContentSize = size!
        
        self.tableView.register(UINib(nibName: "AlertViewTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:AlertViewTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AlertViewTableViewCell
        cell.label.text = "item\(cells[indexPath.row])"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true, completion: nil)
    }
}
