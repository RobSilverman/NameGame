//
//  GameView.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var game: Game
    
    var body: some View {
        VStack {
            Text("Placeholder")
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
