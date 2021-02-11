//
//  HomeMenuButton.swift
//  NameGame
//
//  Created by Robert Silverman on 2/10/21.
//

import SwiftUI

struct HomeMenuButton: View {
    var buttonText: String
    
    var body: some View {
        Text(buttonText)
            .frame(maxWidth: .infinity)
            //TODO: Add some padding to button width
            .padding()
            .font(.custom("SF Pro Text", size: 17))
            .foregroundColor(.white)
            .background(Color("MenuButtonColor"))
            .cornerRadius(8.0)
    }
}

struct HomeMenuButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeMenuButton(buttonText: "Practice Mode")
    }
}
