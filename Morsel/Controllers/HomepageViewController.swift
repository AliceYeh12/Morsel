//
//  HomepageViewController.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {
    
    @IBOutlet weak var greetingMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        establishGreeting()
    }
    
    func establishGreeting() {
        
        let defaults = UserDefaults.standard
        
        if let name = defaults.string(forKey: K.Account.name) {
            greetingMessageLabel.text = "Hungry, \(name)?"
        }
        
    }
    
    @IBAction func splitAMealPressed(_ sender: Any) {
        performSegue(withIdentifier: K.Segues.homeToSplit, sender: self)
    }
    
    @IBAction func findAMealPressed(_ sender: Any) {
        performSegue(withIdentifier: K.Segues.homeToFind, sender: self)
    }
    
    @IBAction func donateAMealPressed(_ sender: Any) {
        performSegue(withIdentifier: K.Segues.homeToFind, sender: self)
    }
    
    @IBAction func settingsPressed(_ sender: Any) {
        performSegue(withIdentifier: K.Segues.homeToSettings, sender: self)
    }
    
}

