//
//  EmployeeTableViewCell.swift
//  Day3
//
//  Created by Hashfi Alfian Ciyuda on 18/10/23.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var nameValueLabel: UILabel!
    
    @IBOutlet weak var ageTitleLabel: UILabel!
    @IBOutlet weak var ageValueLabel: UILabel!
    
    @IBOutlet weak var salaryTitleLabel: UILabel!
    @IBOutlet weak var salaryValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValue(employee: Employee) {
        nameValueLabel.text = employee.name
        ageValueLabel.text = "\(employee.age)"
        salaryValueLabel.text = "Rp \(employee.salary)"
    }
}
