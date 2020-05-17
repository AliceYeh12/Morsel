//
//  SignUpViewController.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        if let email = emailAddressTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.Segues.signUpSegue, sender: self)
                }
            }
        }
        
    }
    
}
