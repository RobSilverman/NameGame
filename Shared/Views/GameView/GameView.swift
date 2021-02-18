//
//  GameView.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import QGrid
import SwiftUI

struct GameView: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    
    var body: some View {
        VStack {
            Text(employeeModel.correctAnswer)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            QGrid(employeeModel.employeeButtons,
                  columns: 2,
                  columnsInLandscape: 3,
                  content: {
                    employee in
                    GameButton(employeeButton: employee)
                  })
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
