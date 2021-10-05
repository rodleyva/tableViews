//
//  ViewController.swift
//  tableViews
//
//  Created by Rodrigo Leyva on 10/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    var tasks: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    @IBAction func beatButtonPressed(_ sender: UIButton) {
        print("i added a new change or a new function ")
        if let text = textField.text{
            if text != ""{
                tasks.append(text)
                tableView.reloadData()
                textField.text = nil
            }
            
        }
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomTableViewCell
        cell.delegate = self
        cell.cellLabel.text = tasks[indexPath.row]
        
        return cell
    }
    
}

extension ViewController: CustomCellDelegate{
    
    func showTaskDescription(description: String) {
        taskDescriptionLabel.text = description
    }
    
    
    
    
}

