//
//  NewPhotoViewController.swift
//  KlossAGram
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class NewPhotoViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
//@IBAction func camera (_ sender: Any) {
//        imagePicker.sourceType = .camera
//        present(imagePicker, animated: true, completion: nil)
    @IBAction func camera (_ sender: Any){
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func photoLibrary (_ sender:Any){
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func albums (_ sender:Any){
        imagePicker.sourceType = .albums
    }
    // Halfway through code
//    }

//private func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
