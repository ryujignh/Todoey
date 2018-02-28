//
//  ViewController.swift
//  Todoey
//
//  Created by Ryuji Ganaha on 2/28/18.
//  Copyright © 2018 Ryuji Ganaha. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Buy lunch", "Buy egg", "Eat lunch"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        
//        tableView.addGestureRecognizer(tapGesture)
        
    }
    
    //MARK - Tableview DAtasource Methods
    //最初にテーブルにRowがいくつあるか宣言する
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
//    @objc func tableViewTapped() {
//        print("tapped!")
//    }
//
//    
    
    //テーブルにある各Cellのtext値を当ててやる
    //tableViewはSwiftのbuiltin functionなのでoverrideする必用がある。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    
    
    

}

