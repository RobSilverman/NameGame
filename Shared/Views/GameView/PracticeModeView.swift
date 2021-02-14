//
//  PracticeModeView.swift
//  NameGame
//
//  Created by Robert Silverman on 2/13/21.
//

import SwiftUI

struct PracticeModeView: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    @StateObject var game = Game()
    
    var body: some View {
        GameView()
            .environmentObject(game)
            .onAppear {
                game.employees += employeeModel.employees
                game.newQuestion()
            }
            .navigationBarTitle("Practice Mode")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct PracticeModeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeModeView()
    }
}
