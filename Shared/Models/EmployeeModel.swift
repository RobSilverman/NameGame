//
//  EmployeeModel.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import Combine
import Foundation

final class EmployeeModel: ObservableObject {
    @Published var employees = [Employee]()
    
    let apiURL = "https://namegame.willowtreeapps.com/api/v1.0/profiles"
    func loadEmployees() {
        guard let url = URL(string: apiURL) else {
            fatalError("Invalid URL")
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(Array<Employee>.self, from: data)
                    DispatchQueue.main.async {
                        self.employees = decodedResponse
                    }
                } catch { print(error) }
            }
        }.resume()
    }
}

