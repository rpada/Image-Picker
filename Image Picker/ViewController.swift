//
//  ViewController.swift
//  Image Picker
//
//  Created by Brenna Pada on 4/8/22.
//

import UIKit
class ViewController: UIViewController, UIImagePickerControllerDelegate
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func experiment(_ sender: Any) {

        let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }

    
}
