//
//  ViewController.swift
//  TableView
//
//  Created by yueh on 2019/7/3.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var listTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = listTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        
        cell.listLabel.text = "This is section \(indexPath.section), row \(indexPath.row)"
        
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
       listTableView.delegate = self
       listTableView.dataSource = self
        listTableView.rowHeight = UITableView.automaticDimension
        listTableView.estimatedRowHeight = 44
        // Do any additional setup after loading the view, typically from a nib.
    }


}

