//
//  UserSettings.swift
//  StateObservedObject
//
//  Created by Abduqaxxor on 2/4/22.
//

import Foundation

class UserSettings: ObservableObject{
    @Published var userId: String = ""
    @Published var userPw: String = ""
}
