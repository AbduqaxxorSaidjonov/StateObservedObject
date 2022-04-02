//
//  SecondScreen.swift
//  StateObservedObject
//
//  Created by Abduqaxxor on 2/4/22.
//

import SwiftUI

struct SecondScreen: View {
    
    @ObservedObject var settings: UserSettings
    
    var body: some View {
        VStack{
            Text("User ID: \(settings.userId)")
                .padding()
                .font(.system(size: 17))
            Text("User PW: \(settings.userPw)")
                .font(.system(size: 17))
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(settings: UserSettings())
    }
}
