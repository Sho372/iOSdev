//
//  ViewController.swift
//  NotificationDemo
//
//  Created by user169300 on 4/24/20.
//  Copyright © 2020 user169300. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var amounttextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        amounttextField.delegate = self
        
        // Do any additional setup after loading the view.
        
        // Add observers to NotificationCenter
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        let tapGestureRecgnizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            view.addGestureRecognizer(tapGestureRecgnizer)
    }

    @objc func dismissKeyboard(_ recoginizer: UITapGestureRecognizer) {
            amounttextField.resignFirstResponder()
    }
        
        @objc func keyboardWillShow(notification: Notification){
            // change the view frame y
            // 1. get the keyboard size
            // 2. change view.frame.y
            if let keyboardsSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if view.frame.origin.y == 0 {
                    view.frame.origin.y -= keyboardsSize.height / 2
                }
            }
        }

        @objc func keyboardWillHide(notification: Notification){
            if let keyboardsSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if view.frame.origin.y != 0 {
                    view.frame.origin.y = 0
                }
            }
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

// MARK UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShoudReurn(){
        
    }
}

