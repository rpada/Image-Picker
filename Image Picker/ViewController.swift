//
//  ViewController.swift
//  Image Picker
//
//  Created by Brenna Pada on 4/8/22.
//

import UIKit
class ViewController: UIViewController, UIImagePickerControllerDelegate,
                      UINavigationControllerDelegate, UITextFieldDelegate
{

    @IBOutlet weak var PickImage: UIToolbar!
    @IBOutlet weak var TopText: UITextField!
    @IBOutlet weak var BottomText: UITextField!
    @IBOutlet weak var imagePickerView: UIImageView!
    
    override func viewDidLoad() {
        let memeTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.strokeColor: UIColor.black ,
            NSAttributedString.Key.foregroundColor: UIColor.white ,
            NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
            NSAttributedString.Key.strokeWidth: -4.5
        ]
        super.viewDidLoad()
        TopText.defaultTextAttributes = memeTextAttributes
        BottomText.defaultTextAttributes = memeTextAttributes
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickAnImage(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        dismiss(animated: true, completion: nil)
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imagePickerView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {

          let imagePicker = UIImagePickerController()
          imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
          present(imagePicker, animated: true, completion: nil)
      }
    
    @IBAction func pickAnImageFromCamera(_ sender: Any) {

           let imagePicker = UIImagePickerController()
           imagePicker.delegate = self
        imagePicker.sourceType = .camera
           present(imagePicker, animated: true, completion: nil)
       }
  
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //Makes sure to not edit user input texts
        if textField.text == "TOP" || textField.text == "BOTTOM" {
            textField.text = ""
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true;
    }
}
