//
//  LoginViewController.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func logInPressed(_ sender: Any) {
        
        if let email = emailAddressTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.Segues.loginSegue, sender: self)
                }
            }
        }
        
        
        
    }
    
}
