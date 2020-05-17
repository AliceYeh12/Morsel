//
//  Constants.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

struct K {
    
    static let cellIdentifier = "PantryTableViewCell"
    
    struct Segues {
        static let signUpSegue = "signedUp"
        static let loginSegue = "loggedIn"
        static let settingsToHome = "settingsToHome"
        static let homeToSplit = "homeToSplit"
        static let homeToFind = "homeToFind"
        static let homeToSettings = "homeToSettings"
        static let splitToConfirm = "splitToConfirm"
        static let pantryToDetail = "pantryToDetail"
    }
    
    struct Account {
        static let name = "name"
        static let phoneNumber = "phoneNumber"
        static let paypalAccount = "paypalAccount"
    }
}
