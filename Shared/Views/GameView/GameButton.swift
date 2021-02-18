//
//  GameButton.swift
//  NameGame
//
//  Created by Robert Silverman on 2/13/21.
//

import SwiftUI

struct GameButton: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    var employeeButton: EmployeeButton
    
    var body: some View {
        Button {
            employeeModel.newQuestion()
        } label: {
            GameImage(url: employeeButton.employee.headshot.url ?? "")
        }
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        //TODO: Implement GameButton Preview
        //GameButton()
        Text("Placeholder")
    }
}
