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
    @Published var employeeButtons: [EmployeeButton] = []
    @Published var correctAnswer: String = "Loading"
    
    func newQuestion() {
        employees.shuffle()
        correctAnswer = employees[0].firstName + " " + employees[0].lastName
        employeeButtons = []
        for i in 0...5 {
            employeeButtons.append(EmployeeButton(employee: employees[i]))
            employeeButtons[i].buttonState = .active
        }
    }
    
    func loadEmployees() {
        guard employees.isEmpty else { return }
        //This guard statement is in place in case loadEmployees() gets called more than once.
        //See note in .onAppear() call in HomeView for why I'm guarding against this.
        
        let apiURL = "https://namegame.willowtreeapps.com/api/v1.0/profiles"
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
                        self.newQuestion()
                    }
                } catch { print(error) }
            }
        }.resume()
    }
}

