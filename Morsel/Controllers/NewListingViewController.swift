//
//  NewListingViewController.swift
//  Morsel
//
//  Created by Alice Yeh on 5/16/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class NewListingViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var imagePicker: UIImagePickerController!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func takePicturePressed(_ sender: Any) {
        
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary

        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
    }
    
    @IBAction func submitPressed(_ sender: Any) {
        performSegue(withIdentifier: K.Segues.splitToConfirm, sender: self)
    }
    
}
