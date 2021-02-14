//
//  EmployeeButton.swift
//  NameGame
//
//  Created by Robert Silverman on 2/14/21.
//

import Foundation

class EmployeeButton {
    let employee: Employee
    var buttonState: ButtonState = .loading
    
    init(employee: Employee) {
        self.employee = employee
    }
    
    enum ButtonState {
        case active, correct, incorrect, loading
    }
}
