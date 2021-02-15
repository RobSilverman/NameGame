//
//  GameButton.swift
//  NameGame
//
//  Created by Robert Silverman on 2/13/21.
//

import SwiftUI

struct GameButton: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    
    var body: some View {
        Button {
            employeeModel.newQuestion()
        } label: {
            Text(employeeModel.employeeButtons[0].employee.firstName)
        }
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        //TODO: Implement GameButton Preview
        GameButton()
    }
}
