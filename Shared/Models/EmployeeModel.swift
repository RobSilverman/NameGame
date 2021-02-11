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
        print("onAppear working")
    }
}

