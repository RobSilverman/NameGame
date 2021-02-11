//
//  GameView.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import SwiftUI

struct GameView: View {
    var correctName: String = "Loading"
    
    var body: some View {
        VStack {
            Text(correctName)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
