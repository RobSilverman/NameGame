//
//  PracticeModeView.swift
//  NameGame
//
//  Created by Robert Silverman on 2/13/21.
//

import SwiftUI

struct PracticeModeView: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    @StateObject var practiceGame = PracticeGame()
    
    var body: some View {
        GameView()
            .environmentObject(practiceGame)
            .onAppear {
                practiceGame.employees += employeeModel.employees
                practiceGame.newQuestion()
            }
    }
}

struct PracticeModeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeModeView()
    }
}
