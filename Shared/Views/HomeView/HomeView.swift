//
//  ContentView.swift
//  Shared
//
//  Created by Robert Silverman on 2/10/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var employeeModel: EmployeeModel
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            //TODO: Improve Gradient Rendering
            LinearGradient(gradient: Gradient(colors: [Color("TargetColorTop"), Color("TargetColorBottom")]), startPoint: .top, endPoint: .bottom)
                .mask(Image(systemName: "target")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 480)
                        .offset(y: -50))
            
            VStack {
                Image("Logo")
                    .offset(y: -50)
                
                Text("Try matching the WillowTree employee to their photo")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 281)
                    .padding()
            }
            
            VStack {
                Spacer()
                
                NavigationLink(
                    destination: PracticeModeView()
                        .environmentObject(employeeModel)) {
                    HomeMenuButton(buttonText: "Practice Mode")
                        .padding(.horizontal)
                }
                
                Button {
                    print("Timed Mode Tapped")
                } label: {
                    HomeMenuButton(buttonText: "Timed Mode")
                        .padding(.horizontal)
                        .padding(.bottom)
                }
            }
        }
        .onAppear {
            //This closure gets called twice due to a SwiftUI bug
            //To reproduce the behavior (closure being called a second time)
            //Throw a breakpoint on .loadEmployees(), then start either mode
            //For more details, see https://stackoverflow.com/questions/63080830/swifui-onappear-gets-called-twice
            employeeModel.loadEmployees()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(EmployeeModel())
    }
}
