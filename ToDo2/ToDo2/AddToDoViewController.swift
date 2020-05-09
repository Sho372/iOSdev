//
//  AddToDoViewController.swift
//  ToDo2
//
//  Created by user169300 on 5/8/20.
//  Copyright © 2020 user169300. All rights reserved.
//
import UIKit

class AddToDoViewController: UIViewController {
    
    @IBOutlet weak var todoTitleField: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    static let unwindSegueId = "doneUnwind"
    var todo: ToDo?

    override func viewDidLoad() {
        super.viewDidLoad()
        validateTextField()
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editTodoTitle(_ sender: UITextField) {
        validateTextField()
    }
    
    @IBAction func returnKeyPressed(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == AddToDoViewController.unwindSegueId {
            todo = ToDo(title: todoTitleField.text!, priorityNumber: 1, isCompleted: false)
        }
    }
    
    private func validateTextField() {
        let todoText = todoTitleField.text ?? ""
        doneButton.isEnabled = !todoText.isEmpty
    }
}
