//
//  Employee.swift
//  Day3
//
//  Created by Hashfi Alfian Ciyuda on 18/10/23.
//

import Foundation

struct ResponseEmployees: Decodable {
    let status: String
    let data: [Employee]
}

struct Employee: Decodable {
    let name: String
    let age: Int
    let salary: Int
    
    enum CodingKeys: String, CodingKey {
        case name = "employee_name"
        case age = "employee_age"
        case salary = "employee_salary"
    }
}
