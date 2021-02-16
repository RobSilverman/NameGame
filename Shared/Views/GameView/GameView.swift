//
//  GameView.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    
    var body: some View {
        VStack {
            Text(employeeModel.correctAnswer)
                .font(.title)
                .fontWeight(.bold)
            
            GameButton(employeeButton: employeeModel.employeeButtons[0])
                .environmentObject(employeeModel)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
