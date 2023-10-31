//
//  APIService.swift
//  Day3
//
//  Created by Hashfi Alfian Ciyuda on 19/10/23.
//

import UIKit
import Alamofire

class APIService: NSObject {
    func fetchEmployees(
        onSuccess: @escaping ([Employee]) -> Void,
        onError: @escaping (Error?) -> Void
    ) {
        guard let url = URL(
            string:
                "https://dummy.restapiexample.com/api/v1/employees"
        ) else { return }
        
        let urlConvertible: URLConvertible = url
        
        AF.request(urlConvertible, method: .get).response { response in
            if let responseData = response.data {
                do {
                    let data = try JSONDecoder().decode(ResponseEmployees.self, from: responseData)
                    DispatchQueue.main.async {
                        onSuccess(data.data)
                    }
                } catch let jsonErr {
                    onError(jsonErr)
                }
            }
        }
    }
}
