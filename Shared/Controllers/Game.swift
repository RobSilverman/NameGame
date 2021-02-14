//
//  Game.swift
//  NameGame (iOS)
//
//  Created by Robert Silverman on 2/13/21.
//

import Foundation

class Game: ObservableObject {
    var employees: [Employee] = []
    @Published var employeeButtons: [EmployeeButton] = []
    
    func newQuestion() {
        employees.shuffle()
        employeeButtons = []
        for i in 0...5 {
            employeeButtons.append(EmployeeButton(employee: employees[i]))
        }
    }
}
