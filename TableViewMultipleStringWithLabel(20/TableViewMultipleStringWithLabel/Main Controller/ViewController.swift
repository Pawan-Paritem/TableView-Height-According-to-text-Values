//
//  ViewController.swift
//  TableViewMultipleStringWithLabel
//
//  Created by Ninesol Tech on 19/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tbView: UITableView!
    
    
    var exampleContent = ["This is a short text."]
    var exampleContent2 = ["Wow, this text is really very very long! I hope it can be read completely! Luckily, we are using automatic row height!"]
    var exampleContent3 = ["Third :Wow, this text is really very very long! I hope it can be read completely! Luckily, we are using automatic row height! Third :Wow, this text is really very very long! I hope it can be read completely! Luckily, we are using automatic row height!"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "tbCell")
        
    }
}

extension ViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (exampleContent + exampleContent2 + exampleContent3).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbView.dequeueReusableCell(withIdentifier: "tbCell", for: indexPath) as! CustomTableViewCell
        
        if indexPath.row == 0 {
            let content = exampleContent[indexPath.row]
            cell.lblText.text = content
            
            
        } else if indexPath.row == 1 {
            
            let content = exampleContent2[0]
            cell.lblText.text = content
        } else if indexPath.row == 2 {
            
            let content = exampleContent3[0]
            cell.lblText.text = content
        }
        
        return cell
    }
}

