//
//  ConfirmationViewController.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func donePressed(_ sender: Any) {
         self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }

}
