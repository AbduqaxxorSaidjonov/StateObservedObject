//
//  MainScreen.swift
//  StateObservedObject
//
//  Created by Abduqaxxor on 2/4/22.
//

import SwiftUI

struct MainScreen: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("User ID",text: $settings.userId)
                    .frame(width: .infinity, height: 10)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5).foregroundColor(.gray.opacity(0.8)))
                SecureField("Paswword",text: $settings.userPw)
                    .frame(width: .infinity, height: 10)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5).foregroundColor(.gray.opacity(0.8)))
                NavigationLink(destination: SecondScreen(settings: settings), label: {
                    Text("Show")
                        .frame(maxWidth: .infinity)
                        .frame(height: 10)
                        .padding()
                        .foregroundColor(.white)
                })
                    .background(.blue)
                    .cornerRadius(5)
            }
            .padding()
            .navigationBarTitle("Observable Object",displayMode: .inline)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
