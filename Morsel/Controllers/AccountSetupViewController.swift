//
//  AccountSetupViewController.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class AccountSetupViewController: UIViewController {
    
    @IBOutlet weak var updateAlert: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var paypalAccountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        loadSettings()
    }
    
    func loadSettings() {
        
        let defaults = UserDefaults.standard
        
        if let name = defaults.string(forKey: K.Account.name), let phone = defaults.string(forKey: K.Account.phoneNumber), let paypal = defaults.string(forKey: K.Account.paypalAccount) {
            nameTextField.text = name
            phoneNumberTextField.text = phone
            paypalAccountTextField.text = paypal
        }
    }
    
    @IBAction func updateSettingsPressed(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(nameTextField.text, forKey: K.Account.name)
        defaults.set(phoneNumberTextField.text, forKey: K.Account.phoneNumber)
        defaults.set(paypalAccountTextField.text, forKey: K.Account.paypalAccount)
        
        updateAlert.text = "Account settings updated!"
        
        performSegue(withIdentifier: K.Segues.settingsToHome, sender: self)
    }
}
