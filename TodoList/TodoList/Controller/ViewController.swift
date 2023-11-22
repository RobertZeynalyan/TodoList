//
//  ViewController.swift
//  TodoList
//
//  Created by Robert on 22.11.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var addtextField: UITextField!
    
    var tasks: [TaskModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationBar()
    }


    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TaskTableViewCell", bundle: nil), forCellReuseIdentifier: "TaskTableViewCell")
    }
    
    func setupNavigationBar() {
        titleLabel.text = "TodoList"
    }
    
    @IBAction func plusClick(_ sender: UIButton) {
        tasks.append(TaskModel(title: "\(addtextField.text!)"))
        addtextField.resignFirstResponder()
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell", for: indexPath) as! TaskTableViewCell
        cell.getData(model: tasks[indexPath.row])
        return cell
    }
    
}
