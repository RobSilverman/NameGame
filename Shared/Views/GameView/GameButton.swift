//
//  GameButton.swift
//  NameGame
//
//  Created by Robert Silverman on 2/13/21.
//

import SwiftUI

struct GameButton: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    @StateObject var employeeButton: EmployeeButton
    
    var body: some View {
        Button {
            employeeModel.newQuestion()
        } label: {
            GameImage(url: "https://namegame.willowtreeapps.com/" + employeeButton.employee.headshot.url!)
                .environmentObject(employeeButton)
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
