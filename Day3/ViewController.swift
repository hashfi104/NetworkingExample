//
//  ViewController.swift
//  Day3
//
//  Created by Hashfi Alfian Ciyuda on 18/10/23.
//

import UIKit
import Alamofire

private let employeeCell = "EmployeeCell"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: EmployeeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(
            UINib(nibName: "EmployeeTableViewCell", bundle: nil),
            forCellReuseIdentifier: employeeCell
        )
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
        
        // initiate View Model
        viewModel = EmployeeViewModel()
        viewModel.bindDataToVC = {
            self.tableView.reloadData()
        }
        viewModel.fetchData()
    }

    // MARK: Table View Data Source & Delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.employeeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: employeeCell, for: indexPath) as! EmployeeTableViewCell
        cell.setValue(employee: self.viewModel.employeeData[indexPath.row])
        return cell
    }
}
