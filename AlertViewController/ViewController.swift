//
//  ViewController.swift
//  AlertViewController
//
//  Created by 陳鍵群 on 2018/9/26.
//  Copyright © 2018年 陳鍵群. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton.init(type: .system)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("Show Alert", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.addTarget(self, action: #selector(showAlertAction), for: .touchUpInside)
        self.view.addSubview(btn)
    }

    @objc func showAlertAction(){
        let tableViewController = TableViewControllerInAlertView()
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        alertController.setValue(tableViewController, forKey: "contentViewController")
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }

}

