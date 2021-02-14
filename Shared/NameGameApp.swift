//
//  NameGameApp.swift
//  Shared
//
//  Created by Robert Silverman on 2/10/21.
//

import SwiftUI

@main
struct NameGameApp: App {
    @StateObject private var employeeModel = EmployeeModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .environmentObject(employeeModel)
            }
        }
    }
}
