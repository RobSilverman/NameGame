//
//  EmployeeButton.swift
//  NameGame
//
//  Created by Robert Silverman on 2/14/21.
//

import Foundation

class EmployeeButton: ObservableObject, Identifiable {
    var employee: Employee
    var buttonState: ButtonState = .loading
    
    init(employee: Employee) {
        self.employee = employee
    }
    
    enum ButtonState {
        case active, correct, incorrect, loading
    }
}
